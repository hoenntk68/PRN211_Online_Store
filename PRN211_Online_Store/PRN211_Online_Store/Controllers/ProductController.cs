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

        public IActionResult Details(int id, int variantId)
        {
            // get product with id
            Product p = ProductService.FindById(id);
            //HttpContext.Session.SetInt32("variantId", variantId);
            ViewBag.SelectedVariantId = variantId;
            return View(p);
        }

        public IActionResult Search(string toSearch)
        {
            if (toSearch == null)
            {
                toSearch = string.Empty;
            }
            toSearch = toSearch.Trim();
            List<Product> productsFound = ProductService.SearchProduct(toSearch);
            if (productsFound != null)
            {
                ViewBag.SearchFunction = "true";
                ViewBag.SearchContent = toSearch;
                return View("HomePage", productsFound);
            }
            else
            {
                return RedirectToAction("Login", "Authen");
            }
        }

        public IActionResult Searchx(string toSearch)
        {
            if (toSearch == null)
            {
                toSearch = string.Empty;
            }
            toSearch = toSearch.Trim();
            List<Product> productsFound = ProductService.SearchProduct(toSearch);
            if (productsFound != null)
            {
                ViewBag.SearchFunction = "true";
                ViewBag.SearchContent = toSearch;
                return View("HomePage", productsFound);
            }
            else
            {
                return RedirectToAction("Login", "Authen");
            }
        }

    }
}
