using System;
using System.Collections.Generic;

namespace PRN211_Online_Store.Models
{
    public partial class Feature
    {
        public Feature()
        {
            Roles = new HashSet<Role>();
        }

        public int FeatureId { get; set; }
        public string? FeatureName { get; set; }
        public string? FeatureUrl { get; set; }

        public virtual ICollection<Role> Roles { get; set; }
    }
}
