using Microsoft.AspNetCore.Mvc;
using PRN211_Online_Store.Models;
using PRN211_Online_Store.Services;

namespace PRN211_Online_Store.Controllers
{
    public class ProductController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }

        public IActionResult Details(int id)
        {
            // get product with id
            Product p = ProductService.FindById(id);
            return View(p);
        }

        public IActionResult Search(string toSearch)
        {
            List<Product> productsFound = ProductService.SearchProduct(toSearch);
            if (productsFound != null)
            {
                return View("HomePage", productsFound);

            }
            else
            {
                return RedirectToAction("Login", "Authen");
            }
        }
    }
}
