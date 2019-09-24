using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using AL_Project.Models;

namespace AL_Project.Controllers.Webmaster
{
    public class RecruitMasterController : Controller
    {
        CompanyEntities db = new CompanyEntities();
        // GET: RecruitMaster
        [Authorize(Roles = "Admin")]
        public ActionResult Index()
        {
            return View();
        }

        [Authorize(Roles = "Admin")]
        [HttpPost]
        public JsonResult getAllRecruit()
        {
            var rs = db.C_Recruitment.Select(s => new { s.Id, s.Title, s.Position, s.ContentRecruit, s.Date, s.Picture });
            return Json(new { re = rs });
        }

        [Authorize(Roles = "Admin")]
        [HttpPost]
        public JsonResult getRecruit(int id)
        {
            var rs = db.C_Recruitment.Where(s => s.Id == id).Select(s => new { s.Id, s.Title, s.Position, s.ContentRecruit, s.Date, s.Picture }).FirstOrDefault();
            return Json(new { re = rs });
        }

        [Authorize(Roles = "Admin")]
        [HttpPost]
        public JsonResult Create(C_Recruitment recruit)
        {
            try
            {
                recruit.Date = DateTime.Now;
                db.C_Recruitment.Add(recruit);
                db.SaveChanges();
                var rs = db.C_Recruitment.Select(s => new { s.Id, s.Title, s.Position, s.ContentRecruit, s.Date, s.Picture });
                return Json(new { msg = "Thêm thành công", re = rs });
            }
            catch
            {
                return Json(new { msg = "Có lỗi xảy ra. Vui lòng thử lại" });
            }
        }

        [Authorize(Roles = "Admin")]
        [HttpPost]
        public JsonResult Edit(C_Recruitment recruit)
        {
            try
            {
                var recruits = db.C_Recruitment.Find(recruit.Id);
                recruits.Title = recruit.Title;
                recruits.ContentRecruit = recruit.ContentRecruit;
                recruits.Position = recruit.Position;
                db.Entry(recruits).State = System.Data.Entity.EntityState.Modified;
                db.SaveChanges();
                var rs = db.C_Recruitment.Select(s => new { s.Id, s.Title, s.Position, s.ContentRecruit, s.Date, s.Picture});
                return Json(new { msg = "Chỉnh sửa thành công", re = rs });
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
                var recruit = db.C_Recruitment.Find(id);
                db.Entry(recruit).State = System.Data.Entity.EntityState.Deleted;
                db.SaveChanges();
                var rs = db.C_Recruitment.Select(s => new { s.Id, s.Title, s.Position, s.ContentRecruit, s.Date, s.Picture });
                return Json(new { msg = "Xoá thành công", re = rs });
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
            string path = Server.MapPath("~/Images/Recruit/");
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