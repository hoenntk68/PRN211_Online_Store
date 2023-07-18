using System;
using System.Collections.Generic;

namespace PRN211_Online_Store.Models
{
    public partial class User
    {
        public User()
        {
            Feedbacks = new HashSet<Feedback>();
            Roles = new HashSet<Role>();
        }

        public string Username { get; set; } = null!;
        public string? Password { get; set; }
        public string? DisplayName { get; set; }
        public string? AvatarPath { get; set; }

        public virtual ICollection<Feedback> Feedbacks { get; set; }

        public virtual ICollection<Role> Roles { get; set; }
    }
}
