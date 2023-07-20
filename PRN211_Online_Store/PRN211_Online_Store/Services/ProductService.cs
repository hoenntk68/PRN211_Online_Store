using Microsoft.EntityFrameworkCore;
using PRN211_Online_Store.Models;

namespace PRN211_Online_Store.Services
{
    public class ProductService
    {
        public ProductService() { }

        public static List<Product> GetAllProducts()
        {
            using (PRN211_Online_StoreContext context = new PRN211_Online_StoreContext())
            {
                var products = context.Products
                    .Include(p => p.ProductAttachments)
                    .Include(p => p.Feedbacks)
                    .Include(p => p.Variants)
                    .Include(p => p.Categories)
                    .ToList();
                return products;
            }
        }

        public static Product FindById(int id)
        {
            using (PRN211_Online_StoreContext context = new PRN211_Online_StoreContext())
            {
                var product = context.Products
                    .Include(p => p.Feedbacks)
                        .ThenInclude(f => f.UsernameNavigation)
                    .Include(p => p.Feedbacks)
                        .ThenInclude(f => f.FeedbackAttachments)
                    .Include(p => p.Categories)
                    .Include(p => p.Variants.OrderBy(v => v.VariantPrice))
                    .Include(p => p.ProductAttachments)
                    .Where(p => p.ProductId == id)
                    .FirstOrDefault();
                return product;
            }
        }

        public static List<Product> SearchProduct(string toSearch)
        {
            using (PRN211_Online_StoreContext context = new PRN211_Online_StoreContext())
            {
                var products = context.Products
                    .Include(p => p.ProductAttachments)
                    .Include(p => p.Feedbacks)
                    .Include(p => p.Variants.OrderBy(v => v.VariantPrice))
                    .Include(p => p.Categories)
                    .Where(
                        p =>
                            p.ProductName.ToLower().Contains(toSearch.ToLower().Trim())
                            || p.ProductDescription.ToLower().Contains(toSearch.ToLower().Trim())
                    ).ToList();
                return products;
            }
        }


        public static int GetVariantPrice(int variantId)
        {
            using (PRN211_Online_StoreContext context = new PRN211_Online_StoreContext())
            {
                var variant = context.Variants
                        .Where(v => v.VariantId == variantId)
                        .FirstOrDefault();
                if (variant != null)
                {
                    return (int)variant.VariantPrice;
                }
                else
                {
                    return -999;
                }
            }
        }

        public static int GetMinPrice(int productId)
        {
            using (PRN211_Online_StoreContext context = new PRN211_Online_StoreContext())
            {
                int minPrice = (int)context.Products
                    .Where(p => p.ProductId == productId)
                    .SelectMany(p => p.Variants)
                    .Min(v => v.VariantPrice);
                return minPrice;
            }
        }

        public static int GetMaxPrice(int productId)
        {
            using (PRN211_Online_StoreContext context = new PRN211_Online_StoreContext())
            {
                int minPrice = (int)context.Products
                    .Where(p => p.ProductId == productId)
                    .SelectMany(p => p.Variants)
                    .Max(v => v.VariantPrice);
                return minPrice;
            }
        }
    }
}
