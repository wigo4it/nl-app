using System;
using System.Web.Configuration;
using Microsoft.ApplicationInsights.Extensibility;
using Umbraco.Core;

namespace NLappCMS.CustomExtensions
{
    public class AppInsightsSetup : ApplicationEventHandler
    {
        protected override void ApplicationStarted(UmbracoApplicationBase umbracoApplication, ApplicationContext applicationContext)
        {
            UmbracoApplicationBase.ApplicationStarted += Application_Started;
        }

        private void Application_Started(object sender, EventArgs e)
        {
            TelemetryConfiguration.Active.InstrumentationKey = WebConfigurationManager.AppSettings["AppInsights_InstrumentationKey"];
        }
    }
}