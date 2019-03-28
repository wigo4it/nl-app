// --------------------------------------------------------------------------------------------------------------------
// <copyright file="ExtractExtensions.cs" company="Colours B.V.">
//   © Colours B.V. 2015
// </copyright>
// <summary>
//   The extract extensions.
// </summary>
// --------------------------------------------------------------------------------------------------------------------

namespace NLappCMS.CustomExtensions
{
    using NLappCMS.CustomExtensions.Extract;
    using System;
    using System.Linq;
    using System.Text;

    using Umbraco.Core.Logging;
    using Umbraco.Core.Models;
 
    /// <summary>
    /// The extract extensions.
    /// </summary>
    public static class ExtractExtensions
    {
        /// <summary>
        /// Extract the content to a string for Examine.
        /// </summary>
        /// <param name="publishedContent">
        /// The published content.
        /// </param>
        /// <param name="extractedContent">
        /// The extractedContent.
        /// </param>
        /// <param name="language">
        /// The language.
        /// </param>
        public static void ExtractForExamine(this IPublishedContent publishedContent,StringBuilder extractedContent,string language = null)
        {
            var extractProperties =
                publishedContent.ContentType.PropertyTypes.Where(
                    x =>
                    PropertyExtractResolver.Current.PropertyExtractItems.Exists(
                        y => y.IsExtractForPropertyType(x.PropertyEditorAlias))).ToList();

            foreach (var prop in extractProperties)
            {
                var extractItem =
                    PropertyExtractResolver.Current.PropertyExtractItems.FirstOrDefault(
                        x => x.IsExtractForPropertyType(prop.PropertyEditorAlias));

                if (extractItem != null)
                {
                    try
                    {
                        extractItem.Examine(extractedContent, publishedContent, prop.PropertyTypeAlias, language);
                    }
                    catch (Exception ex)
                    {
                        LogHelper.Error<IPublishedContent>(ex.Message, ex);
                    }
                }
            }
        }
    }
}