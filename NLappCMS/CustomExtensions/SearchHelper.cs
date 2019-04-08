using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading;
using Examine;
using Examine.LuceneEngine.SearchCriteria;
using Examine.Providers;
using Examine.SearchCriteria;
using NLappCMS.Models;
using Umbraco.Core;
using Umbraco.Core.Logging;
using Umbraco.Core.Models;
using Umbraco.Web;

namespace NLappCMS.CustomExtensions
{
    public class SearchHelper
    {
        private BaseSearchProvider _searcher;

        public IOrderedEnumerable<SearchResult> Search(string queryString, string searcherName)
        {
            Stopwatch sw = new Stopwatch();
            sw.Start();
            LogHelper.Info(this.GetType(), $"NLAPP: Search started. Term: {queryString}");

            var currentCulture = Thread.CurrentThread.CurrentCulture.ToString();
            _searcher = ExamineManager.Instance.SearchProviderCollection[searcherName];
            var searchCriteria = _searcher.CreateSearchCriteria();
            IOrderedEnumerable<SearchResult> retVal = null;

           // All page content is indexed per language. Search the content for the current language.
           var initialQuery = searchCriteria
                    .Field("PageContent-" + currentCulture, queryString.ToLowerInvariant().Fuzzy())
                    .And()
                    .GroupedOr(new[] {"searchablePath"}, GetSearchableNodeIds());

            var initialResult  = _searcher.Search(initialQuery.Compile());
            var linkedPageIDs = GetLinkedPageIds(initialResult);

            if (linkedPageIDs.Any())
            {
                var additionalResult = GetLinkingPages(initialResult, linkedPageIDs);
                var filteredResult = RemoveLinkedPages(initialResult, linkedPageIDs);
                retVal = filteredResult.Concat(additionalResult).OrderByDescending(x => x.Score);
            }
            else
            {
                retVal = initialResult.OrderByDescending(x => x.Score);
            }

            sw.Stop();
            LogHelper.Info(this.GetType(), $"NLAPP: Search (term: {queryString}) finished. Duration: {sw.ElapsedMilliseconds}ms");

            return retVal;
        }

        //results only appear when the path of a node contains one of these nodes 
        //i.e. this way amsterdam users don't get searchresults from rotterdam
        private string[] GetSearchableNodeIds()
        {
            Stopwatch sw = new Stopwatch();
            sw.Start();

            string searchPrefix = "\"|";
            string searchPostfix = "|\"";

            var currentPageId =  UmbracoContext.Current.PageId ?? 0;
            var currentContent = ApplicationContext.Current.Services.ContentService.GetById(currentPageId);
            var currentHomeId = currentContent.Ancestors().FirstOrDefault(x => (x.ContentType.Alias == DocumentTypes.Home)).Id;
            var currentContentHolders = currentContent.Ancestors().FirstOrDefault(x => x.ContentType.Alias.ToLower() == DocumentTypes.Welkom)
                                           .Descendants().Where(d => d.ContentType.Alias.ToLower() == DocumentTypes.ConentHolder);

            // first add id of home page
            List<string> retVal = new List<string> {$"{searchPrefix}{currentHomeId}{searchPostfix}"};

            // then add the all node id's of type ContentHolder
            foreach (var contentHolder in currentContentHolders)
            {
                retVal.Add($"{searchPrefix}{contentHolder.Id}{searchPostfix}");
            }

            sw.Stop();
            LogHelper.Info(this.GetType(), $"NLAPP: Collected searchable NodeIDs. Took {sw.ElapsedMilliseconds}ms");

            return retVal.ToArray();
        }

        private IEnumerable<SearchResult> RemoveLinkedPages(ISearchResults initialResult, string[] linkedPageIds)
        {
            return initialResult.Where(x => !linkedPageIds.Contains(x.Id.ToString()));
        }

        private IEnumerable<SearchResult> GetLinkingPages(ISearchResults initialResult, string[] linkedPageIDs)
        {
            Stopwatch sw = new Stopwatch();
            sw.Start();

            var linkingPageIds = GetLinkingPageIds(initialResult, linkedPageIDs);

            var secondSearchCriteria = _searcher.CreateSearchCriteria(BooleanOperation.Or);
            var secondQuery = secondSearchCriteria.GroupedOr(new[] {"id"}, linkingPageIds);

            var additionalResult = _searcher.Search(secondQuery.Compile()); 

            var filtered = RemoveRedundantLinkingPages(additionalResult);

            sw.Stop();
            LogHelper.Info(this.GetType(), $"NLAPP: GetLinkinPages took {sw.ElapsedMilliseconds}ms.");

            return filtered;
        }

        private IEnumerable<SearchResult> RemoveRedundantLinkingPages(ISearchResults additionalResult)
        {
            return from result in additionalResult
                group result by result.Fields["inhoudKiezer"]
                into groups
                select groups.OrderBy(r => r.Score).First();
        }

        private string[] GetLinkedPageIds(IEnumerable<SearchResult> results)
        {
            var infoPaginaNlPages = results.Where(x => x.Fields["nodeTypeAlias"] == "infoPaginaNL");

            return infoPaginaNlPages.Select(searchResult => searchResult.Fields["id"]).ToArray();
        }

        private string[] GetLinkingPageIds(IEnumerable<SearchResult> results, string[] linkedPageIDs)
        {
            Stopwatch sw = new Stopwatch();
            sw.Start();

            List<string> retVal = new List<string>();
            List<string> linkedPageGuids = new List<string>();
            var searchCriteria = _searcher.CreateSearchCriteria(BooleanOperation.Or);

            foreach (var id in linkedPageIDs)
            {
                linkedPageGuids.Add(results.First(x => x.Id.ToString() == id).Fields["key"].Replace("-",String.Empty)); // get the guid
            }

            var linkinPageResults = _searcher.Search(
                searchCriteria.GroupedOr(new[] { "linkedDocumentGuid" }, linkedPageGuids.ToArray()).Compile()
            );

            foreach (var searchResult in linkinPageResults)
            {
                retVal.Add(searchResult.Fields["id"]);
            }

            sw.Stop();
            LogHelper.Info(this.GetType(), $"NLAPP: GetLinkinPAgeIds took {sw.ElapsedMilliseconds}ms.");

            return retVal.ToArray();
        }
    }   
}