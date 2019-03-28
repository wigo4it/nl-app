// --------------------------------------------------------------------------------------------------------------------
// <copyright file="NestedContentExtractItem.cs" company="Colours B.V.">
//   © Colours B.V. 2015
// </copyright>
// <summary>
//   The nested content property extract item.
// </summary>
// --------------------------------------------------------------------------------------------------------------------
using NLappCMS.Models.Extract;
using System.Collections.Generic;
using System.Text;

using Umbraco.Core.Models;
using Umbraco.Web;

namespace NLappCMS.CustomExtensions.Extract
{
    /// <summary>
    /// The nested content property extract item.
    /// </summary>
    public class NestedContentExtractItem : PropertyExtractBase
    {
        /// <summary>
        /// Gets the allowed types.
        /// </summary>
        public override string[] AllowedTypes
        {
            get
            {
                return new[] { "Our.Umbraco.NestedContent" };
            }
        }

        public override void Examine(StringBuilder extractedContent,IPublishedContent content,string alias,string language = null)
        {
            var multipleContent = content.GetPropertyValue<IEnumerable<IPublishedContent>>(alias);

            if (multipleContent != null)
            {
                foreach (var publishedContent in multipleContent)
                {
                    publishedContent.ExtractForExamine(extractedContent);
                }
            }
            else
            {
                var singleContent = content.GetPropertyValue<IPublishedContent>(alias);

                if (singleContent != null)
                {
                    singleContent.ExtractForExamine(extractedContent);
                }
            }
        }
    }
}