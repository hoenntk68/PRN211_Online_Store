using Microsoft.AspNetCore.Mvc;
using PRN211_Online_Store.Services;

namespace PRN211_Online_Store.Controllers
{
    public class AuthenController : Controller
    {
        private static string adminRole = "admin";
        private static string memberRole = "member";
        private static string loginFailMsg = "Incorrect username or password";
        public IActionResult Index()
        {
            return View();
        }

        public IActionResult Login()
        {
            return View();
        }

        [HttpPost]
        public IActionResult Login(string username, string password)
        {
            if (AuthenService.Login(username, password) != null)
            {
                HttpContext.Session.SetString("username", username);
                HttpContext.Session.SetString("role", "admin");
                return RedirectToAction("Homepage", "Home");
            } else
            {
                ViewBag.ErrorMsg = loginFailMsg;
                return RedirectToAction("Login");
            }
        }
    }
}
