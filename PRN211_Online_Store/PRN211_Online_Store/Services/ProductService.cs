using Microsoft.EntityFrameworkCore;
using PRN211_Online_Store.Models;

namespace PRN211_Online_Store.Services
{
    public class ProductService
    {
        public ProductService() { }

        public static Product FindById(int id)
        {
            using (PRN211_Online_StoreContext context = new PRN211_Online_StoreContext())
            {
                var product = context.Products
                    .Include(p => p.Feedbacks)
                        .ThenInclude(f => f.UsernameNavigation)
                    .Include(p=> p.Feedbacks)
                        .ThenInclude(f => f.FeedbackAttachments)
                    .Include(p => p.Categories)
                    .Include(p => p.Variants)
                    .Include(p => p.ProductAttachments)
                    .Where(p => p.ProductId == id)
                    .FirstOrDefault();
                //if (product != null)
                //{
                //    foreach (var feedback in product.Feedbacks)
                //    {
                //        context.Entry(feedback).Reference(f => f.UsernameNavigation).Load();
                //    }
                //}
                return product;
            }
        }
    }
}
