using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(AL_s_Project.Startup))]
namespace AL_s_Project
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
