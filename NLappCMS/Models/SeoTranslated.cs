using Our.Umbraco.Vorto.Extensions;
using Umbraco.Core.Models;
using Umbraco.Core.Models.PublishedContent;
using Umbraco.ModelsBuilder;

namespace NLappCMS.Models
{
    public class SeoTranslated: PublishedContentModel, ISeoTranslated
    {
        public SeoTranslated(IPublishedContent content)
            : base(content)
        {}


        [ImplementPropertyType("seoMetaDescription")]
        public string TranslatedSeoMetaDescription
        {
            get
            {
                return this.HasVortoValue("seoMetaDescription") ? this.GetVortoValue<string>("seoMetaDescription") : string.Empty;
            }
        }
    }
}