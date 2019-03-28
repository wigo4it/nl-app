using System;
using System.Configuration;
using System.Collections.Generic;
using System.Linq;
using System.Web.Configuration;
using Umbraco.Core;
using Umbraco.Core.Models;
using Umbraco.Web;
using Umbraco.Web.Trees;
using Umbraco.Web.Models.Trees;

namespace NLappCMS.CustomExtensions
{
    public class TreeNodesRenderer : ApplicationEventHandler
    {
        protected override void ApplicationStarted(UmbracoApplicationBase umbracoApplication, ApplicationContext applicationContext)
        {
            TreeControllerBase.TreeNodesRendering += TreeControllerBase_TreeNodesRendering;
        }

        private void TreeControllerBase_TreeNodesRendering(TreeControllerBase sender, TreeNodesRenderingEventArgs e)
        {
            if (e?.Nodes != null && sender.TreeAlias == "content" && !sender.Security.CurrentUser.Groups.Any((g) => g.Name.ToLower().Equals("admin")))
            {
                var rootId = WebConfigurationManager.AppSettings["nlapp-root-id"];
                if (sender.Umbraco.Content(rootId) is IPublishedContent rootNode)
                {
                    var childPages = rootNode.Children().ToList();

                    foreach (var page in childPages)
                    {
                        var node = e.Nodes.SingleOrDefault(n => n.Id.ToString() == page.Id.ToString() && n.ParentId.ToString() == "-1");
                        if (node != null)
                        {
                            e.Nodes.Remove(node);
                        }
                    }
                }
            }
        }
    }
}