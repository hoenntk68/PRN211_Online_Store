using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Mvc;
using PRN211_Online_Store.Models;
using PRN211_Online_Store.Services;

namespace PRN211_Online_Store.Controllers
{
    public class FeedbackController : Controller
    {
        private readonly IWebHostEnvironment _webHostEnvironment;

        public FeedbackController(IWebHostEnvironment webHostEnvironment)
        {
            _webHostEnvironment = webHostEnvironment;
        }
        public IActionResult Index()
        {
            return View();
        }

        public IActionResult Feedback(int id)
        {
            Product p = ProductService.FindById(id);
            return View(p);
        }

        public async Task<IActionResult> CreateFeedbackAsync(int productId, int rating, string comment, IFormFileCollection images)
        {
            // process feedback
            List<FeedbackAttachment> attachments = new List<FeedbackAttachment>();
            foreach (var image in images)
            {
                if (image != null && image.Length > 0)
                {
                    // Generate a unique filename for each image
                    var fileName = $"{Guid.NewGuid().ToString()}{Path.GetExtension(image.FileName)}";
                    var imagePath = Path.Combine(_webHostEnvironment.WebRootPath, "img", fileName);

                    // save the images to wwwroot/img
                    using (var stream = new FileStream(imagePath, FileMode.Create))
                    {
                        await image.CopyToAsync(stream);
                    }
                    FeedbackAttachment att = new FeedbackAttachment();
                    att.FileType = Path.GetExtension(image.FileName);
                    att.FilePath = fileName;
                    attachments.Add(att);
                }
            }
            // save feedback
            Feedback f = new Feedback();
            f.Rating = rating;
            f.Comment = comment;
            f.Username = "huyenntk";
            f.ProductId = productId;
            f.FeedbackTime = DateTime.Now;  
            f.FeedbackAttachments = attachments;
            using (PRN211_Online_StoreContext context = new PRN211_Online_StoreContext())
            {
                context.Feedbacks.Add(f);
                if (context.SaveChanges() > 0)
                {
                    return RedirectToAction("Details", "Product", new { id = productId });
                }
                else
                {
                    return RedirectToAction("Login", "Authen");

                }
            }
        }
    }
}
