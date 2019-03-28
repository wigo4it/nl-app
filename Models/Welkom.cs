using Our.Umbraco.Vorto.Extensions;
using Our.Umbraco.Vorto.Models;
using System.Collections.Generic;
using Umbraco.Core.Models;
using Umbraco.ModelsBuilder;

namespace NLappCMS.Models
{    
    public partial class Welkom
    {
        public IDictionary<string, object> TownNamesAll
        {
            get
            {
                var prop = this.GetProperty("vorto_GemeenteNaam");
                if (prop == null)
                {
                    return null;
                }

                VortoValue vortoProp = prop.Value as VortoValue;
                if (vortoProp == null)
                {
                    return null;
                }

                return vortoProp.Values;
            }
        }

        public PrivacyContent TranslatedTerms(string isoCode)
        {
            IPublishedContent translatedContent = this.GetVortoValue<IPublishedContent>("voorwaarden", isoCode);
            return translatedContent == null ? null : new PrivacyContent(translatedContent);
        }
    }
}