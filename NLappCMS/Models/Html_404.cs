using Our.Umbraco.Vorto.Extensions;
using Umbraco.Core.Models;
using Umbraco.ModelsBuilder;

namespace NLappCMS.Models
{
    public partial class Html_404
    {
        [ImplementPropertyType("vorto_InfoPaginaContent")]
        public InfoPaginaContent Translated
        {
            get
            {
                var translatedContent = this.GetVortoValue<IPublishedContent>("vorto_InfoPaginaContent");
                return translatedContent == null ? null : new InfoPaginaContent(translatedContent);
            }
        }
    }
}
