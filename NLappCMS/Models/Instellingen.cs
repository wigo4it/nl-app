using System.Collections.Generic;
using Umbraco.Core.Models;
using Umbraco.Web;

namespace NLappCMS.Models
{
    public class Instellingen
    {
        public IPublishedContent Root { get; set; }

        public IEnumerable<IDictionaryTranslation> LanguageLabels { get; set; }
       
        public UmbracoContext Context { get; set; }

        public bool Visible { get; set; }
    }
}