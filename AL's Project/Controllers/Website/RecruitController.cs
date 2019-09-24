using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using AL_Project.Models;

namespace AL_Project.Controllers.Website
{
    public class RecruitController : Controller
    {
        CompanyEntities db = new CompanyEntities();
        // GET: Recuit
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult Single(int id)
        {
            HttpCookie ck = new HttpCookie("RecruitId");
            ck.Value = id.ToString();
            ck.Expires = DateTime.Now.AddDays(10);
            Response.Cookies.Add(ck);
            return View();
        }

        [HttpPost]
        public JsonResult getRecruit()
        {
            var rs = db.C_Recruitment.OrderByDescending(s => s.Date).Select(s => new { s.Id, s.Title, s.Position, s.ContentRecruit, s.Date, s.Picture });
            return Json(new { re = rs });
        }

        [HttpPost]
        public JsonResult getDetailRecruit()
        {
            HttpCookie ck = Request.Cookies["RecruitId"];
            var projectid = ck.Value;
            var id = int.Parse(projectid);
            var rs = db.C_Recruitment.Where(s => s.Id == id).Select(s => new { s.Id, s.Title, s.Position, s.ContentRecruit, s.Date, s.Picture }).FirstOrDefault();
            return Json(new { re = rs });
        }
    }
}