namespace PRN211_Online_Store
{
    public class Program
    {
        public static void Main(string[] args)
        {
            var builder = WebApplication.CreateBuilder(args);
            builder.Services.AddControllersWithViews();
            builder.Services.AddSession();
            var app = builder.Build();
            app.UseSession();
            app.UseStaticFiles();

            //app.MapGet("/", () => "Hello World!");
            app.MapControllerRoute(
            name: "default",
            pattern: "{controller=Home}/{action=HomePage}/{id?}"
            );

            app.Run();
        }
    }
}