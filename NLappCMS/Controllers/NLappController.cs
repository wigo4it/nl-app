using System.Web.Mvc;
using Umbraco.Web.Models;

namespace NLappCMS.Controllers
{
    public class NLappController: Umbraco.Web.Mvc.RenderMvcController
    {
        [OutputCache(CacheProfile = "NLappCacheProfile")]
        public override ActionResult Index(RenderModel model)
        {
            return base.Index(model);
        }

        public ActionResult NotCachedIndex(RenderModel model)
        {
            return base.Index(model);
        }
    }
}