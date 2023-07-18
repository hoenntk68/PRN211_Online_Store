using System;
using System.Collections.Generic;

namespace PRN211_Online_Store.Models
{
    public partial class FeedbackAttachment
    {
        public int AttachmentId { get; set; }
        public int FeedbackId { get; set; }
        public string FileType { get; set; } = null!;
        public string FilePath { get; set; } = null!;
        public string? Description { get; set; }

        public virtual Feedback Feedback { get; set; } = null!;
    }
}
