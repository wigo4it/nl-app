using System.Collections.Generic;

namespace NLappCMS.Models
{
    public class PwaManifest
    {
        public PwaManifest()
        {
            Icons = new List<PwaManifestIcon>();
        }

        public string Name { get; set; }
        public string ShortName { get; set; }
        public string Orientation{ get; set; }
        public string StartUrl { get; set; }
        public string Display { get; set; }
        public string ThemeColor { get; set; }
        public string BackgroundColor { get; set; }
        public IList<PwaManifestIcon> Icons { get; private set; }
    }

    public class PwaManifestIcon
    {
        public PwaManifestIcon(string src, string sizes, string type)
        {
            Src = src;
            Sizes = sizes;
            Type = type;
        }

        public string Src { get; private set; }
        public string Sizes { get; private set; }
        public string Type { get; private set; }
    }

}