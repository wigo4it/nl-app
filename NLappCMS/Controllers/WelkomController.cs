using System.Linq;
using System.Web.Mvc;
using Umbraco.Web.Models;

namespace NLappCMS.Controllers
{
    public class WelkomController : NLappController
    {
        public override ActionResult Index(RenderModel model)
        {
            string[] nonContentPaths = {"/xmlsitemap", "/serviceworkerfiles", "/manifest"};

            if (Request.Url == null || nonContentPaths.Contains(Request.Url.AbsolutePath))
            {
                return base.Index(model);
            }

            var redirectUrl = GetRedirectUrl();
            if (!string.IsNullOrEmpty(redirectUrl))
            {
                return Redirect(redirectUrl);
            }

            return base.Index(model);
        }

        private string GetRedirectUrl()
        {
            const string languageCookieKey = "lang";
            const string townCookieKey = "town";

            var languageCookie = ControllerContext.HttpContext.Request.Cookies[languageCookieKey];
            var townCookie = ControllerContext.HttpContext.Request.Cookies[townCookieKey];

            if (languageCookie == null || townCookie == null)
                return null;

            var language = languageCookie.Value;
            var town = townCookie.Value;
            town = town.Replace("%20", "-"); // Umbraco url encoding

            var returnUrl = $"/{language}/{town}";
            return returnUrl.ToLower();
        }
    }
}