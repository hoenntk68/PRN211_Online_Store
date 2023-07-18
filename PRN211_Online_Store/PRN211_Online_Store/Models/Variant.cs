using System;
using System.Collections.Generic;

namespace PRN211_Online_Store.Models
{
    public partial class Variant
    {
        public int VariantId { get; set; }
        public int ProductId { get; set; }
        public string? VariantName { get; set; }
        public int? VariantPrice { get; set; }
        public string? VariantDescription { get; set; }

        public virtual Product Product { get; set; } = null!;
    }
}
