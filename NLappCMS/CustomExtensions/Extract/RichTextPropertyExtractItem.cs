// --------------------------------------------------------------------------------------------------------------------
// <copyright file="RichTextPropertyExtractItem.cs" company="Colours B.V.">
//   © Colours B.V. 2015
// </copyright>
// <summary>
//   The rich text property extract item.
// </summary>
// --------------------------------------------------------------------------------------------------------------------

using System.Text;
using NLappCMS.Models.Extract;
using Umbraco.Core;
using Umbraco.Core.Models;
using Umbraco.Web;

namespace NLappCMS.CustomExtensions.Extract
{
    /// <summary>
    /// The rich text property extract item.
    /// </summary>
    public class RichTextPropertyExtractItem : PropertyExtractBase
    {
        /// <summary>
        /// Gets the allowed types.
        /// </summary>
        public override string[] AllowedTypes
        {
            get
            {
                return new[] { Constants.PropertyEditors.TinyMCEAlias };
            }
        }

        public override void Examine(
            StringBuilder extractedContent,
            IPublishedContent content,
            string alias,
            string language = null)
        {
            var text = content.GetPropertyValue<string>(alias);

            if (!string.IsNullOrEmpty(text))
            {
                extractedContent.Append(" " + text.StripHtml().StripNewLines());
            }
        }
    }
}