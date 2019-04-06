using System;
using System.Web.Mvc;
using Umbraco.Web.Models;

namespace NLappCMS.Controllers
{
    public class InfoPaginaController : NLappController
    {
        public override ActionResult Index(RenderModel model)
        {
            var rawUrl = HttpContext.Request.RawUrl;
            if (rawUrl.EndsWith(".aspx"))
            {
                // Umbraco page, for example Preview
                return base.NotCachedIndex(model);
            }

            // Redirect page to the Onderwerp view it belongs to
            return Redirect(GetRedirectUrl(model.Content.Id, rawUrl));
        }

        private string GetRedirectUrl(int contentId, string url)
        {
            var querystring = new string[] { };

            // split url and querystring
            var qsIdx = url.IndexOf("?", StringComparison.Ordinal);
            if (qsIdx != -1)
            {
                querystring = url.Substring(qsIdx + 1).Split('&');
                url = url.Substring(0, qsIdx);
            }

            // clean up url
            if (url.EndsWith("/"))
            {
                url = url.Substring(0, url.Length - 1);
            }

            // remove url part for InfoPagina
            var i = url.LastIndexOf("/", StringComparison.Ordinal);
            var returnUrl = HttpContext.Request.RawUrl.Substring(0, i).ToLower();

            // get url of page containing the link
            string fromUrl = null;
            foreach (string qsp in querystring)
            {
                var kvp = qsp.Split('=');
                if (kvp.Length == 2 && kvp[0].ToLower() == "from")
                {
                    fromUrl = kvp[1];
                    break;
                }
            }

            // add id of InfoPagina to querystring
            return string.IsNullOrWhiteSpace(fromUrl) ? $"{returnUrl}?id={contentId}" : $"{returnUrl}?id={contentId}&from={fromUrl}";
        }
    }
}