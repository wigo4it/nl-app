using Our.Umbraco.Vorto.Extensions;
using Our.Umbraco.Vorto.Models;
using System.Collections.Generic;
using Umbraco.ModelsBuilder;

namespace NLappCMS.Models
{    
    public partial class Home
    {
        [ImplementPropertyType("vorto_GemeenteNaam")]
        public string TownName
        {
            get
            {
                return this.GetVortoValue("vorto_GemeenteNaam") as string;
            }   
        }

        public IDictionary<string, object> TownNamesAll
        {
            get
            {
                var prop = this.GetProperty("vorto_GemeenteNaam");
                if (prop == null) {
                    return null;
                }

                VortoValue vortoProp = prop.Value as VortoValue;
                if (vortoProp == null)
                {
                    return null;
                }

                return vortoProp.Values;
            }
        }
    }
}