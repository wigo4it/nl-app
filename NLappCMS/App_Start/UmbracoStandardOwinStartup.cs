using Microsoft.Owin;
using Owin;
using Umbraco.Web;
using NLappCMS;
using System.Configuration;
using System.Web.Cors;
using Umbraco.IdentityExtensions;

[assembly: OwinStartup("UmbracoStandardOwinStartup", typeof(UmbracoStandardOwinStartup))]

namespace NLappCMS
{
    /// <summary>
    /// The standard way to configure OWIN for Umbraco
    /// </summary>
    /// <remarks>
    /// The startup type is specified in appSettings under owin:appStartup - change it to "StandardUmbracoStartup" to use this class
    /// </remarks>
    public class UmbracoStandardOwinStartup : UmbracoDefaultOwinStartup
    {
        public override void Configuration(IAppBuilder app)
        {
            // Ensure the default options are configured
            base.Configuration(app);

            var nlappDomain = UmbracoContext.Current.HttpContext.Request.Url.GetLeftPart(System.UriPartial.Authority);

            // Configuring the Umbraco REST API options
            app.UseUmbracoBackOfficeTokenAuth(new BackOfficeAuthServerProviderOptions());
                app.UseUmbracoBackOfficeTokenAuth(
                    new BackOfficeAuthServerProviderOptions()
                        {
                            CorsPolicy = new CorsPolicy()
                            {
                                AllowAnyHeader = true,
                                AllowAnyMethod = true,
                                Origins = { nlappDomain }
                            }
                    });
        }
    }
}
