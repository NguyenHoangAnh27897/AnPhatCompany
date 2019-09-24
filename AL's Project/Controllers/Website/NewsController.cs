using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using AL_Project.Models;

namespace AL_Project.Controllers.Website
{
    public class NewsController : Controller
    {
        CompanyEntities db = new CompanyEntities();
        // GET: News
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult Single(int id)
        {
            HttpCookie ck = new HttpCookie("NewsId");
            ck.Value = id.ToString();
            ck.Expires = DateTime.Now.AddDays(10);
            Response.Cookies.Add(ck);
            return View();
        }

        [HttpPost]
        public JsonResult getNews()
        {
            var rs = db.C_News.OrderByDescending(s => s.Date).Select(s => new { s.Id, s.Title, s.Author, s.ContentNews, s.Date, s.Avatar });
            return Json(new { ne = rs });
        }

        [HttpPost]
        public JsonResult getDetailNews()
        {
            HttpCookie ck = Request.Cookies["NewsId"];
            var projectid = ck.Value;
            var id = int.Parse(projectid);
            var rs = db.C_News.Where(s => s.Id == id).Select(s => new { s.Id, s.Title, s.Author, s.ContentNews, s.Date, s.Avatar }).FirstOrDefault();
            return Json(new { ne = rs });
        }
    }
}