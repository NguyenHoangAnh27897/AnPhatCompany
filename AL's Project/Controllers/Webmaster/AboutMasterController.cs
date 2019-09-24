using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using AL_Project.Models;

namespace AL_Project.Controllers.Webmaster
{
    public class AboutMasterController : Controller
    {
        CompanyEntities db = new CompanyEntities();
        // GET: AboutMaster
        [Authorize(Roles = "Admin")]
        public ActionResult Index()
        {
            return View();
        }

        [Authorize(Roles = "Admin")]
        [HttpPost]
        public JsonResult getAbout()
        {
            var rs = db.C_About.Select(s => new { s.Id, s.Title, s.Picture, s.ContentAbout, s.SubContent01, s.SubContent02 }).FirstOrDefault();
            return Json(new { ab = rs });
        }

        [Authorize(Roles = "Admin")]
        [HttpPost]
        public JsonResult Edit(C_About about)
        {
            try
            {
                db.Entry(about).State = System.Data.Entity.EntityState.Modified;
                db.SaveChanges();
                var rs = db.C_About.Where(s => s.Id == 1).Select(s => new { s.Id, s.Title, s.Picture, s.ContentAbout, s.SubContent01, s.SubContent02 }).FirstOrDefault();
                return Json(new { msg = "Chỉnh sửa thành công", ab = rs });
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
            string path = Server.MapPath("~/Images/About/");
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