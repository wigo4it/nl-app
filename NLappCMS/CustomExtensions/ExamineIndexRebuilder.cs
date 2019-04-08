using System;
using System.Collections.Generic;
using System.Diagnostics;
using Examine;
using Umbraco.Core.Logging;

namespace NLappCMS.CustomExtensions
{
    public class ExamineIndexRebuilder
    {
        /// https://gist.github.com/kevinblake/4000628

        public void RebuildIndex(List<string> indexes)
        {
            Stopwatch sw = new Stopwatch();

            try
            {
                sw.Start();

                // rebuild specified index(es)
                indexes.ForEach(index => ExamineManager.Instance.IndexProviderCollection[index].RebuildIndex());
                // Or rebuild them all
                /// ExamineManager.Instance.IndexProviderCollection.ToList().ForEach(index => index.RebuildIndex());  

                sw.Stop();
                LogHelper.Info(this.GetType(), $"NLAPP: Rebuilding {indexes.Count} index(es) took {sw.ElapsedMilliseconds}ms.");
            }
            catch (Exception e)
            {
                LogHelper.Error(e.GetType(), e.InnerException != null ? e.InnerException.Message : e.Message, e);
                throw;
            }
     
        }
    }
}