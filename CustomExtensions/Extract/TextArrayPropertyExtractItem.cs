// --------------------------------------------------------------------------------------------------------------------
// <copyright file="TextArrayPropertyExtractItem.cs" company="Colours B.V.">
//   © Colours B.V. 2015
// </copyright>
// <summary>
//   The text array property extract item.
// </summary>
// --------------------------------------------------------------------------------------------------------------------

using System.Collections.Generic;
using System.Linq;
using System.Text;
using NLappCMS.Models.Extract;
using Umbraco.Core;
using Umbraco.Core.Models;
using Umbraco.Web;

namespace NLappCMS.CustomExtensions.Extract
{
    /// <summary>
    /// The text array property extract item.
    /// </summary>
    public class TextArrayPropertyExtractItem : PropertyExtractBase
    {
        /// <summary>
        /// Gets the allowed types.
        /// </summary>
        public override string[] AllowedTypes
        {
            get
            {
                return new[] { Constants.PropertyEditors.MultipleTextstringAlias };
            }
        }

        public override void Examine(
            StringBuilder extractedContent,
            IPublishedContent content,
            string alias,
            string language = null)
        {
            var values = content.GetPropertyValue<IEnumerable<string>>(alias);
            var list = new List<string>();

            if (values != null)
            {
                // GetPropertyValue returns collection of property values with empty strings between values
                list = values.Where(x => x != string.Empty).ToList();
            }

            if (list.Any())
            {
                extractedContent.Append(" " + string.Join(" ", list));
            }
        }
    }
}