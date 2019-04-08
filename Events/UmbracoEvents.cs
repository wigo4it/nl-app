using System;
using System.Collections.Generic;
using System.Globalization;
using System.IO;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.Hosting;
using Examine;
using NLappCMS.Controllers;
using NLappCMS.CustomExtensions;
using NLappCMS.CustomExtensions.Extract;
using NLappCMS.Models;
using NLappCMS.Models.Extract;
using Umbraco.Core;
using Umbraco.Core.Configuration;
using Umbraco.Core.Events;
using Umbraco.Core.Logging;
using Umbraco.Core.Models;
using Umbraco.Web;
using Umbraco.Web.Routing;
using Umbraco.Web.Security;
using UmbracoExamine;
using Umbraco.Core.Services;
using Umbraco.Web.Mvc;

namespace NLappCMS.Events
{
    public class UmbracoEvents : ApplicationEventHandler
    {
        private UmbracoHelper _umbracoHelper { get; set; }

        protected override void ApplicationStarting(UmbracoApplicationBase umbracoApplication, ApplicationContext applicationContext)
        {
            DefaultRenderMvcControllerResolver.Current.SetDefaultControllerType(typeof(NLappController));
        }

        protected override void ApplicationStarted(UmbracoApplicationBase umbracoApplication, ApplicationContext applicationContext)
        {
            new ExamineIndexRebuilder().RebuildIndex(new List<string> { Indexers.NlAppExternalIndexer });

            var externalIndexer = (UmbracoContentIndexer) ExamineManager.Instance.IndexProviderCollection[Indexers.NlAppExternalIndexer];
            externalIndexer.GatheringNodeData += ExternalIndexer_GatherContentData;
            externalIndexer.GatheringNodeData += ExternalIndexer_GatherSearchablePath;
            externalIndexer.GatheringNodeData += ExternalIndexer_GatherLinkedDocumentGuid;

            ContentService.Published += ExternalIndexer_RebuildIndexAfterPublish;
        }

        private void ExternalIndexer_RebuildIndexAfterPublish(object sender, PublishEventArgs<IContent> e)
        {
            new ExamineIndexRebuilder().RebuildIndex(new List<string> { Indexers.NlAppExternalIndexer });
            LogHelper.Info(this.GetType(), $"NLAPP: Initiated index rebuild after publishing new or changed content.");
        }


        protected override void ApplicationInitialized(UmbracoApplicationBase umbracoApplication, ApplicationContext applicationContext)
        {
            // Resolve all property extract classes.
            PropertyExtractResolver.Current =
                new PropertyExtractResolver(PluginManager.Current.ResolveTypes<PropertyExtractBase>());
        }

        private void ExternalIndexer_GatherContentData(object sender,IndexingNodeDataEventArgs indexingNodeDataEventArgs)
        {
            EnsureUmbracoContext();

            var content = this._umbracoHelper.TypedContent(indexingNodeDataEventArgs.NodeId);
            if (content != null)
            {
                foreach (var lang in ApplicationContext.Current.Services.LocalizationService.GetAllLanguages())
                {
                    try
                    {
                        var searhContentBuilder = new StringBuilder();
                        content.ExtractForExamine(searhContentBuilder, lang.CultureInfo.Name);

                        // Index all properties per language. For Vorto this means the properties for that language.
                        indexingNodeDataEventArgs.Fields.Add("PageContent" + "-" + lang.CultureInfo.Name, searhContentBuilder.ToString());
                    }
                    catch(Exception e)
                    {
                        LogHelper.Warn(this.GetType(), $"NLAPP: Language ({lang.CultureName}) not found on local OS. Use CultureRegionFeeder to add missing culture.");
                        throw new CultureNotFoundException("Culture not found on local OS. Use CultureRegionFeeder to add missing culture.", e);
                    }
                }
            }
        }

        private void ExternalIndexer_GatherSearchablePath(object sender, IndexingNodeDataEventArgs e)
        {
            var path = e.Fields["path"];
            var searchablePath = String.Join(" ", path.Split(',').Select(x => String.Format("{1}{0}{1}", x.ToLower(), '|')));

            if (e.Fields.ContainsKey("searchablePath"))
            {
                e.Fields["searchablePath"] = searchablePath;
            }
            else
            {
                e.Fields.Add("searchablePath", searchablePath);
            }
        }

        private void ExternalIndexer_GatherLinkedDocumentGuid(object sender, IndexingNodeDataEventArgs e)
        {
            int prefixIndex = "umb://document/".Length;
            string linkedDocGuid = String.Empty;
          
            // only "infopaginalinknl" typed pages has the inhoudKiezer property
            if (e.Fields["nodeTypeAlias"].ToLower() == DocumentTypes.InfoPaginaLinkNl)
            {
                string linkedToDocUri = e.Fields["inhoudKiezer"];
                linkedDocGuid = linkedToDocUri.Substring(prefixIndex);
            }

            if (e.Fields.ContainsKey("linkedDocumentGuid"))
            {
                e.Fields["linkedDocumentGuid"] = linkedDocGuid;
            }
            else
            {
                e.Fields.Add("linkedDocumentGuid", linkedDocGuid);
            }
        }

        private void EnsureUmbracoContext()
        {
            if (UmbracoContext.Current == null)
            {
                var dummyHttpContext =
                    new HttpContextWrapper(
                        new HttpContext(new SimpleWorkerRequest(string.Empty, string.Empty, new StringWriter())));

                this._umbracoHelper =
                    new UmbracoHelper(
                        UmbracoContext.EnsureContext(
                            dummyHttpContext,
                            ApplicationContext.Current,
                            new WebSecurity(dummyHttpContext, ApplicationContext.Current),
                            UmbracoConfig.For.UmbracoSettings(),
                            UrlProviderResolver.Current.Providers,
                            false));
            }
        }
    }
}