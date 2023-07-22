using Microsoft.EntityFrameworkCore;
using PRN211_Online_Store.Models;

namespace PRN211_Online_Store.Services
{
    public class FeedbackService
    {
        public FeedbackService() { }
        public static void EditFeedback(Feedback feedback)
        {

        }

        public static Feedback FindById(int feedbackId)
        {
            using (PRN211_Online_StoreContext context = new PRN211_Online_StoreContext())
            {
                var f = context.Feedbacks
                    .Where(f => f.FeedbackId == feedbackId)
                    .Include(f => f.FeedbackAttachments)
                    .Include(f => f.Product)
                    .FirstOrDefault();
                return f;
            }
        }

        /// <summary>
        /// save the img to imagePath
        /// </summary>
        /// <param name="image"></param>
        /// <param name="imagePath"></param>
        public static void saveFeedbackImage(IFormFile image, string imagePath)
        {

        }

        public static bool AddFeedback(Feedback feedback)
        {
            using (PRN211_Online_StoreContext context = new PRN211_Online_StoreContext())
            {
                context.Feedbacks.Add(feedback);
                if (context.SaveChanges() > 0)
                {
                    return true;
                }
                return false;
            }
        }
        public static void DeleteFeedback(int feedbackId)
        {
            using (PRN211_Online_StoreContext context = new PRN211_Online_StoreContext())
            {
                var toDelete = context.Feedbacks.Where(f => f.FeedbackId == feedbackId)
                    .Include(f => f.FeedbackAttachments)
                    .Include(f => f.Product)
                    .FirstOrDefault();
                if (toDelete != null)
                {
                    var attachments = context.FeedbackAttachments.Where(a => a.FeedbackId == feedbackId).ToList();
                    context.FeedbackAttachments.RemoveRange(attachments);
                    context.Feedbacks.Remove(toDelete);
                    context.SaveChanges();
                }
            }
        }

    }
}
