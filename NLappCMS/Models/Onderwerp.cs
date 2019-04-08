using Our.Umbraco.Vorto.Extensions;
using Umbraco.Core.Models;
using Umbraco.ModelsBuilder;

namespace NLappCMS.Models
{
    public partial class Onderwerp
    {
        [ImplementPropertyType("Vorto_OnderwerpContent")]
        public OnderwerpContent Translated
        {
            get
            {
                var translatedContent = this.GetVortoValue<IPublishedContent>("Vorto_OnderwerpContent");
                return translatedContent == null ? null : new OnderwerpContent(translatedContent);
            }
        }
    }
}
