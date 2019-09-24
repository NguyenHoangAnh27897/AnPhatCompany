using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using AL_Project.Models;

namespace AL_Project.Controllers
{
    public class ProjectController : Controller
    {
        CompanyEntities db = new CompanyEntities();
        // GET: Project
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult Single(int id)
        {
            HttpCookie ck = new HttpCookie("ProjectId");
            ck.Value = id.ToString();
            ck.Expires = DateTime.Now.AddDays(10);
            Response.Cookies.Add(ck);
            return View();
        }

        [HttpPost]
        public JsonResult getProject()
        {
            var rs = db.C_Project.OrderByDescending(s => s.Date).Select(s => new { s.Id, s.Title, s.Avatar, s.ContentProject, s.Date, s.Author });
            return Json(new { pro = rs});
        }

        [HttpPost]
        public JsonResult getDetailProject()
        {
            HttpCookie ck = Request.Cookies["ProjectId"];
            var projectid = ck.Value;
            var id = int.Parse(projectid);
            var rs = db.C_Project.Where(s => s.Id == id).Select(s => new { s.Id, s.Title, s.Avatar, s.ContentProject, s.Date, s.Author }).FirstOrDefault();
            return Json(new { pro = rs });
        }
    }
}