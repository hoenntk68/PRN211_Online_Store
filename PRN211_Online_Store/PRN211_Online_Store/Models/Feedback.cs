using System;
using System.Collections.Generic;

namespace PRN211_Online_Store.Models
{
    public partial class Feedback
    {
        public Feedback()
        {
            FeedbackAttachments = new HashSet<FeedbackAttachment>();
        }

        public int FeedbackId { get; set; }
        public string Username { get; set; } = null!;
        public int ProductId { get; set; }
        public int? Rating { get; set; }
        public string? Comment { get; set; }
        public DateTime? FeedbackTime { get; set; }

        public virtual Product Product { get; set; } = null!;
        public virtual User UsernameNavigation { get; set; } = null!;
        public virtual ICollection<FeedbackAttachment> FeedbackAttachments { get; set; }
    }
}
