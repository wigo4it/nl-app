using Our.Umbraco.Vorto.Extensions;
using Umbraco.Core.Models;
using Umbraco.ModelsBuilder;

namespace NLappCMS.Models
{    
    public partial class Categorie
    {
        [ImplementPropertyType("vorto_CategorieContent")]
        public Categoriecontent Translated
        {
            get
            {
                IPublishedContent translatedContent = this.GetVortoValue<IPublishedContent>("vorto_CategorieContent");
                return translatedContent == null ? null : new Categoriecontent(translatedContent);
            }
        }
    }
}