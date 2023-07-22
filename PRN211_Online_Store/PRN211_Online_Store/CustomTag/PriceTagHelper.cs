using Microsoft.AspNetCore.Razor.TagHelpers;
using System.Globalization;

namespace PRN211_Online_Store.CustomTag
{
    public class PriceTagHelper : TagHelper
    {
        public int Price { get; set; }

        public override void Process(TagHelperContext context, TagHelperOutput output)
        {
            // Format the price with commas
            string formattedPrice = ((decimal)Price).ToString("N");

            // Replace the decimal point with a comma
            formattedPrice = formattedPrice.Replace(".", ",");

            // Update the content of the element with the formatted price
            output.Content.SetContent(formattedPrice);
        }
    }
}
