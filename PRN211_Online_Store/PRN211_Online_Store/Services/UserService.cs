using PRN211_Online_Store.Models;

namespace PRN211_Online_Store.Services
{
    public class UserService
    {
        public UserService() { }
        public static List<Role> GetRoleByUsername(string username)
        {
            using (PRN211_Online_StoreContext context = new PRN211_Online_StoreContext())
            {
                var roles = context.Users
                    .Where(u => u.Username == username)
                    .SelectMany(u => u.Roles).ToList();
                return roles;
            }
        }

        public static bool isUserAdmin(string username)
        {
            List<Role> roles = GetRoleByUsername(username);
            foreach (Role role in roles)
            {
                if (role.RoleName == "Admin") {
                    return true;
                }
            }
            return false;
        }
    }
}
