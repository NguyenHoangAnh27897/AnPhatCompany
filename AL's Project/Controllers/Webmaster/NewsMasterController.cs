using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using AL_Project.Models;

namespace AL_Project.Controllers.Webmaster
{
    public class NewsMasterController : Controller
    {
        CompanyEntities db = new CompanyEntities();
        // GET: NewsMaster
        [Authorize(Roles = "Admin")]
        public ActionResult Index()
        {
            return View();
        }

        [Authorize(Roles = "Admin")]
        [HttpPost]
        public JsonResult getAllNews()
        {
            var rs = db.C_News.Select(s => new { s.Id, s.Title, s.Author, s.ContentNews, s.Date, s.Avatar });
            return Json(new { ne = rs });
        }

        [HttpPost]
        public JsonResult getNews(int id)
        {
            var rs = db.C_News.Where(s => s.Id == id).Select(s => new { s.Id, s.Title, s.Author, s.ContentNews, s.Date, s.Avatar }).FirstOrDefault();
            return Json(new { ne = rs });
        }

        [Authorize(Roles = "Admin")]
        [HttpPost]
        public JsonResult Create(C_News news)
        {
            try
            {
                news.Date = DateTime.Now;
                db.C_News.Add(news);
                db.SaveChanges();
                var rs = db.C_News.Select(s => new { s.Id, s.Title, s.Author, s.ContentNews, s.Date, s.Avatar });
                return Json(new { msg = "Thêm thành công", ne = rs });
            }
            catch
            {
                return Json(new { msg = "Có lỗi xảy ra. Vui lòng thử lại" });
            }
        }

        [Authorize(Roles = "Admin")]
        [HttpPost]
        public JsonResult Edit(C_News news)
        {
            try
            {
                var newss = db.C_News.Find(news.Id);
                newss.Title = news.Title;
                newss.ContentNews = news.ContentNews;
                newss.Author = news.Author;
                db.Entry(newss).State = System.Data.Entity.EntityState.Modified;
                db.SaveChanges();
                var rs = db.C_News.Select(s => new { s.Id, s.Title, s.Author, s.ContentNews, s.Date, s.Avatar });
                return Json(new { msg = "Chỉnh sửa thành công", ne = rs });
            }
            catch
            {
                return Json(new { msg = "Có lỗi xảy ra. Vui lòng thử lại" });
            }
        }

        [Authorize(Roles = "Admin")]
        [HttpPost]
        public JsonResult Delete(int id)
        {
            try
            {
                var recruit = db.C_News.Find(id);
                db.Entry(recruit).State = System.Data.Entity.EntityState.Deleted;
                db.SaveChanges();
                var rs = db.C_News.Select(s => new { s.Id, s.Title, s.Author, s.ContentNews, s.Date, s.Avatar });
                return Json(new { msg = "Xoá thành công", ne = rs });
            }
            catch
            {
                return Json(new { msg = "Có lỗi xảy ra. Vui lòng thử lại" });
            }
        }

        [Authorize(Roles = "Admin")]
        [HttpPost]
        public ContentResult Upload()
        {
            string path = Server.MapPath("~/Images/News/");
            if (!Directory.Exists(path))
            {
                Directory.CreateDirectory(path);
            }

            foreach (string key in Request.Files)
            {
                HttpPostedFileBase postedFile = Request.Files[key];
                postedFile.SaveAs(path + postedFile.FileName);
            }

            return Content("Success");
        }
    }
}