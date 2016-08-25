using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(ThingFinder.Startup))]
namespace ThingFinder
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
