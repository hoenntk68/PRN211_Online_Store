using System;
using System.Collections.Generic;

namespace PRN211_Online_Store.Models
{
    public partial class Product
    {
        public Product()
        {
            Feedbacks = new HashSet<Feedback>();
            ProductAttachments = new HashSet<ProductAttachment>();
            Variants = new HashSet<Variant>();
            Categories = new HashSet<Category>();
        }

        public int ProductId { get; set; }
        public string? ProductName { get; set; }
        public string? ProductDescription { get; set; }
        public int? UnitPrice { get; set; }
        public int? StockUnit { get; set; }
        public int? SoldUnit { get; set; }

        public virtual ICollection<Feedback> Feedbacks { get; set; }
        public virtual ICollection<ProductAttachment> ProductAttachments { get; set; }
        public virtual ICollection<Variant> Variants { get; set; }

        public virtual ICollection<Category> Categories { get; set; }
    }
}
