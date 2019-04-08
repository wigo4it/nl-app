// --------------------------------------------------------------------------------------------------------------------
// <copyright file="VortoPropertyExtractItem.cs" company="Colours B.V.">
//   © Colours B.V. 2015
// </copyright>
// <summary>
//   The Vorto property extract item.
// </summary>
// --------------------------------------------------------------------------------------------------------------------
using System.Text;
using NLappCMS.Models.Extract;
using Our.Umbraco.Vorto.Extensions;

using Umbraco.Core.Models;
namespace NLappCMS.CustomExtensions.Extract
{
    /// <summary>
    /// The Vorto property extract item.
    /// </summary>
    public class VortoPropertyExtractItem : PropertyExtractBase
    {
        /// <summary>
        /// Gets the allowed types.
        /// </summary>
        public override string[] AllowedTypes
        {
            get
            {
                return new[] { "Our.Umbraco.Vorto" };
            }
        }

        public override void Examine(StringBuilder extractedContent, IPublishedContent content, string alias, string language = null)
        {
            var vortoContent = content.GetVortoValue<IPublishedContent>(alias, language);

            if (vortoContent != null)
            {
                vortoContent.ExtractForExamine(extractedContent, language);
            }
            else
            {
                var vortoString = content.GetVortoValue<string>(alias, language);
                if (!string.IsNullOrEmpty(vortoString))
                {
                    extractedContent.Append(" " + vortoString);
                }
            }
        }
    }
}