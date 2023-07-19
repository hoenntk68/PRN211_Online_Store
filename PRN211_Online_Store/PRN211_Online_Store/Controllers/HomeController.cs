using Microsoft.AspNetCore.Mvc;
using PRN211_Online_Store.Models;
using PRN211_Online_Store.Services;

namespace PRN211_Online_Store.Controllers
{
    public class HomeController : Controller
    {
        public IActionResult HomePage()
        {
            // get all products
            using (PRN211_Online_StoreContext context = new PRN211_Online_StoreContext())
            {
                List<Product> products = ProductService.GetAllProducts();
                return View("HomePage", products);
            }
        }
    }
}
