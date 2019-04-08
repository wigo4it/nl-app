using System.Configuration;
using System.Collections.Generic;
using System.Linq;
using Umbraco.Core;
using Umbraco.Core.Logging;
using Umbraco.Core.Models;
using Umbraco.Web;
using Umbraco.Web.Trees;
using Umbraco.Web.Models.Trees;

namespace NLappCMS.CustomExtensions
{
    public class ContextMenuRenderer : ApplicationEventHandler
    {
        protected override void ApplicationStarted(UmbracoApplicationBase umbracoApplication, ApplicationContext applicationContext)
        {
            TreeControllerBase.MenuRendering += TreeControllerBase_RoleBasedMenuRendering;
        }

        private void TreeControllerBase_RoleBasedMenuRendering(TreeControllerBase sender, MenuRenderingEventArgs e)
        {
            var currentPageId = e.NodeId; 
            var currentContextMenu = e.Menu;
            var excludeFromDocumentTypeAliasses = ConfigurationManager.AppSettings["excludeMenuItemsFromDocumentType"].Split(',').ToList();
            var excludableMenuItemsAliasses = ConfigurationManager.AppSettings["excludableMenuItems"].Split(',').ToList();
            var includeAllRoles = ConfigurationManager.AppSettings["includeAllItemsForRole"].Split(',').ToList();

            LogHelper.Info(this.GetType(), $"NLAPP: Get settings for RoleBasedContextMenu rendering.");

            bool hasIncludeAllRole = sender.Security.CurrentUser.Groups.Any(x => includeAllRoles.Contains(x.Alias));

            if (!hasIncludeAllRole)
            {
                ExcludeRestrictedItems(excludeFromDocumentTypeAliasses, excludableMenuItemsAliasses, currentPageId, currentContextMenu);
                LogHelper.Info(this.GetType(), $"NLAPP: Excluded restricted items from ContextMenu for user {sender.Security.CurrentUser.Name}.");
            }
        }

        private void ExcludeRestrictedItems(IEnumerable<string> restrictFromDocumentTypeAliasses, IEnumerable<string> restrictedItemAliasses, string pageId, MenuItemCollection menu)
        {
            var umbracoHelper = new UmbracoHelper(UmbracoContext.Current);
            IPublishedContent contextMenuActivatedOnPage = umbracoHelper.TypedContent(pageId);
            if (contextMenuActivatedOnPage == null) // not published content
            {
                return;
            }

            var beperkteDocType = restrictFromDocumentTypeAliasses.Contains(contextMenuActivatedOnPage.DocumentTypeAlias);

            if (beperkteDocType)
            {
                foreach(var menuItemAlias in restrictedItemAliasses)
                {
                    int aliasIndex = menu.Items.FindIndex(item => item.Alias == menuItemAlias);

                    if(aliasIndex >= 0)
                    {
                        menu.Items.RemoveAt(aliasIndex);
                    }
                }
            }
        }
    }
}