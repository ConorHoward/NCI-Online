using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Web_Dev.Startup))]
namespace Web_Dev
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
