using Our.Umbraco.Vorto.Extensions;
using Umbraco.Core.Models;
using Umbraco.ModelsBuilder;
using Newtonsoft.Json;
using System.Collections.Generic;

namespace NLappCMS.Models
{
    public partial class InfoPaginaNL
    {
        [ImplementPropertyType("vorto_InfoPaginaContent")]
        public InfoPaginaContent Translated
        {
            get
            {
                IPublishedContent translatedContent = this.GetVortoValue<IPublishedContent>("vorto_InfoPaginaContent");
                return translatedContent == null ? null : new InfoPaginaContent(translatedContent);
            }
        }

        public IEnumerable<ExternalLink> TranslatedLinks
        {
            get
            {
                if (Translated == null || Translated.Links == null)
                    return new List<ExternalLink>();

                var valueStr = Translated.Links.ToString();
                return JsonConvert.DeserializeObject<IEnumerable<ExternalLink>>(valueStr);
            }
        }
    }
}