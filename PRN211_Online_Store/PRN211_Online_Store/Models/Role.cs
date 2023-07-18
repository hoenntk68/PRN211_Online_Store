using System;
using System.Collections.Generic;

namespace PRN211_Online_Store.Models
{
    public partial class Role
    {
        public Role()
        {
            Features = new HashSet<Feature>();
            Usernames = new HashSet<User>();
        }

        public int RoleId { get; set; }
        public string? RoleName { get; set; }

        public virtual ICollection<Feature> Features { get; set; }
        public virtual ICollection<User> Usernames { get; set; }
    }
}
