using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(SE_Project_HealthCare_System.Startup))]
namespace SE_Project_HealthCare_System
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
