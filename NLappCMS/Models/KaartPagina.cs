using Newtonsoft.Json;
using Our.Umbraco.Vorto.Extensions;
using System.Collections.Generic;
using System.Linq;
using Umbraco.ModelsBuilder;

namespace NLappCMS.Models
{
    public partial class KaartPagina
    {
        [ImplementPropertyType("vorto_kaarttitel")]
        public string TranslatedTitel
        {
            get
            {
                return this.GetVortoValue("vorto_kaarttitel") as string;
            }
        }

        public IEnumerable<ExternalLink> Maps
        {
            get
            {
                var valueStr = MapLinks.ToString();
                return JsonConvert.DeserializeObject<IEnumerable<ExternalLink>>(valueStr);
            }
        }
    }
}