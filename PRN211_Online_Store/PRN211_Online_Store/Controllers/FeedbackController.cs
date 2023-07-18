using Microsoft.AspNetCore.Mvc;
using PRN211_Online_Store.Models;
using PRN211_Online_Store.Services;

namespace PRN211_Online_Store.Controllers
{
    public class FeedbackController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }

        public IActionResult Feedback(int id)
        {
            Product p = ProductService.FindById(id);
            return View(p);
        }

        public IActionResult CreateFeedback(int id)
        {
            // process feedback

            // save feedback
            return View();
        }
    }
}
