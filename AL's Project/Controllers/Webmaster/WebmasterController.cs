using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using AL_Project.Models;

namespace AL_Project.Controllers.Webmaster
{
    public class WebmasterController : Controller
    {
        CompanyEntities db = new CompanyEntities();
        // GET: Webmaster
        [Authorize(Roles = "Admin")]
        public ActionResult Index()
        {
            return View();
        }

        [Authorize(Roles = "Admin")]
        public ActionResult Slider()
        {
            return View();
        }

        [Authorize(Roles = "Admin")]
        [HttpPost]
        public JsonResult getSlider()
        {
            var rs = db.C_Slider.Select(s => new { s.Id, s.Title, s.SubTitle }).FirstOrDefault();
            return Json(new { sli = rs });
        }

        [Authorize(Roles = "Admin")]
        [HttpPost]
        public JsonResult EditSlider(C_Slider slider)
        {
            try
            {
                db.Entry(slider).State = System.Data.Entity.EntityState.Modified;
                db.SaveChanges();
                var rs = db.C_Slider.Select(s => new { s.Id, s.Title, s.SubTitle }).FirstOrDefault();
                return Json(new { msg = "Chỉnh sửa thành công", sli = rs });
            }
            catch (Exception e)
            {
                return Json(new { msg = "Có lỗi xảy ra. Vui lòng thử lại" });
            }
        }

        [Authorize(Roles = "Admin")]
        public ActionResult Homepage()
        {
            return View();
        }

        [Authorize(Roles = "Admin")]
        [HttpPost]
        public JsonResult getHomepage()
        {
            var rs = db.C_Homepage.Select(s => new { s.Id, s.Title01, s.Title02, s.Title03, s.Title04, s.Title05, s.Title06, s.Content01, s.Content02 ,s.Content03, s.Picture01, s.Picture02, s.Picture03,s .Picture04, s.SubTitle01, s.SubTitle02, s.SubTitle03, s.Text01, s.Text02, s.Text03, s.Text04, s.Text05, s.Text06, s.TextTitle01, s.TextTitle02, s.TextTitle03, s.TextTitle04, s.TextTitle05, s.TextTitle06 }).FirstOrDefault();
            return Json(new { hp = rs });
        }

        [Authorize(Roles = "Admin")]
        [HttpPost]
        public JsonResult Edit(C_Homepage homepage)
        {
            try
            {
                db.Entry(homepage).State = System.Data.Entity.EntityState.Modified;
                db.SaveChanges();
                var rs = db.C_Homepage.Select(s => new { s.Id, s.Title01, s.Title02, s.Title03, s.Title04, s.Title05, s.Title06, s.Content01, s.Content02, s.Content03, s.Picture01, s.Picture02, s.Picture03, s.Picture04, s.SubTitle01, s.SubTitle02, s.SubTitle03, s.Text01, s.Text02, s.Text03, s.Text04, s.Text05, s.Text06, s.TextTitle01, s.TextTitle02, s.TextTitle03, s.TextTitle04, s.TextTitle05, s.TextTitle06 }).FirstOrDefault();
                return Json(new { msg = "Chỉnh sửa thành công", hp = rs });
            }
            catch (Exception e)
            {
                return Json(new { msg = "Có lỗi xảy ra. Vui lòng thử lại" });
            }
        }

        [Authorize(Roles = "Admin")]
        [HttpPost]
        public ContentResult Upload()
        {
            string path = Server.MapPath("~/Images/Homepage/");
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