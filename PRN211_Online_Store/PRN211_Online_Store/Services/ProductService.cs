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
                    .Include(p => p.Variants)
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
                    .Include(p => p.Variants)
                    .Include(p => p.Categories)
                    .Where(
                        p =>
                            p.ProductName.ToLower().Contains(toSearch.ToLower().Trim())
                            || p.ProductDescription.ToLower().Contains(toSearch.ToLower().Trim())
                    ).ToList();
                return products;
            }
        }
    }
}
