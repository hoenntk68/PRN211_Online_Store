using Microsoft.AspNetCore.Mvc;
using PRN211_Online_Store.Models;
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
            string previousPageUrl = HttpContext.Request.Headers["Referer"].ToString();
            //HttpContext.Session.SetString("PreviousPageUrl", previousPageUrl);

            ViewBag.ReturnUrl = previousPageUrl;
            return View();
        }

        [HttpPost]
        public IActionResult Login(string username, string password, string returnUrl)
        {
            User u = AuthenService.Login(username, password);
            if (u != null)
            {
                HttpContext.Session.SetString("username", username);
                HttpContext.Session.SetString("avatar", u.AvatarPath);
                // get role from username
                if (UserService.isUserAdmin(username))
                {
                    HttpContext.Session.SetString("role", adminRole);
                }
                else
                {
                    HttpContext.Session.SetString("role", memberRole);
                }
                //if (!string.IsNullOrEmpty(returnUrl))
                //{
                //    return Redirect(returnUrl);
                //}
                return RedirectToAction("Homepage", "Home");
            }
            else
            {
                ViewBag.ErrorMsg = loginFailMsg;
                return RedirectToAction("Login");
            }
        }

        public IActionResult Logout()
        {
            HttpContext.Session.Remove("username");
            HttpContext.Session.Remove("role");
            return RedirectToAction("Homepage", "Home");
        }
    }
}
