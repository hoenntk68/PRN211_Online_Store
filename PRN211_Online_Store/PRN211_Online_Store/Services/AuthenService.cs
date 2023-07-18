using PRN211_Online_Store.Models;

namespace PRN211_Online_Store.Services
{
    public class AuthenService
    {
        public AuthenService() { }
        public static User Login(string username, string password)
        {
            using (PRN211_Online_StoreContext context = new PRN211_Online_StoreContext())
            {
                User u = context.Users.Where(u => u.Username == username && u.Password == password).FirstOrDefault();
                return u;
            }
        }
    }
}
