using System;
using System.Collections.Generic;

namespace PRN211_Online_Store.Models
{
    public partial class ProductAttachment
    {
        public int AttachmentId { get; set; }
        public int ProductId { get; set; }
        public string? FileType { get; set; }
        public string? FilePath { get; set; }
        public string? Description { get; set; }

        public virtual Product Product { get; set; } = null!;
    }
}
