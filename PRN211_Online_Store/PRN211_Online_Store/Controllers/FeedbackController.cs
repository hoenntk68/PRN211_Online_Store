using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using PRN211_Online_Store.Models;
using PRN211_Online_Store.Services;
using System.Net.Mail;

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

        public IActionResult Feedback(int id, int feedbackId)
        {
            string username = HttpContext.Session.GetString("username");
            if (username == null)
            {
                return RedirectToAction("Login", "Authen");
            }
            Product p = ProductService.FindById(id);
            Feedback f = FeedbackService.FindById(feedbackId);
            ViewBag.FeedbackId = feedbackId;
            var viewModel = (Product: p, Feedback: f);
            return View(viewModel);
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
            f.Username = HttpContext.Session.GetString("username");
            f.ProductId = productId;
            f.FeedbackTime = DateTime.Now;
            f.FeedbackAttachments = attachments;
            if (FeedbackService.AddFeedback(f))
            {
                return RedirectToAction("Details", "Product", new { id = productId });
            }
            else
            {
                return RedirectToAction("Login", "Authen");

            }
        }

        [HttpPost]
        public async Task<IActionResult> EditAsync(int productId, int feedbackId, int rating, string comment, IFormFileCollection images)
        {
            using (PRN211_Online_StoreContext context = new PRN211_Online_StoreContext())
            {
                // get feedback from feedbackId
                var f = context.Feedbacks
                    .Where(f => f.FeedbackId == feedbackId)
                    .Include(f => f.FeedbackAttachments)
                    .Include(f => f.Product)
                    .FirstOrDefault();
                // set feedback as new feedback
                f.Comment = comment;
                f.Rating = rating;
                context.FeedbackAttachments.RemoveRange(f.FeedbackAttachments);
                context.SaveChanges();
                List<FeedbackAttachment> attachments = new List<FeedbackAttachment>();
                // process new images upload
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
                f.FeedbackAttachments = attachments;

                // save changes
                context.SaveChanges();
            }

            // return to product detail page
            //Product p = ProductService.FindById(productId);
            return RedirectToAction("Details", "Product", new { id = productId });

        }

        public IActionResult Delete(int id)
        {
            var f = FeedbackService.FindById(id);
            if (f != null)
            {
                int productId = f.ProductId;
                Product p = ProductService.FindById(productId);
                FeedbackService.DeleteFeedback(id);
                if (p != null)
                {
                    return RedirectToAction("Details", "Product", new { id = productId });
                }
            }
            return RedirectToAction("HomePage", "Home");
        }
    }
}
