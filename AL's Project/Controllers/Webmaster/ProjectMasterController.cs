using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using AL_Project.Models;

namespace AL_Project.Controllers.Webmaster
{
    public class ProjectMasterController : Controller
    {
        CompanyEntities db = new CompanyEntities();
        // GET: ProjectMaster
        [Authorize(Roles = "Admin")]
        public ActionResult Index()
        {
            return View();
        }

        [Authorize(Roles = "Admin")]
        [HttpPost]
        public JsonResult getAllProject()
        {
            var rs = db.C_Project.Select(s => new { s.Id, s.Title, s.Avatar,s.ContentProject,s.Date,s.Author });
            return Json(new {pj =rs });
        }

        [Authorize(Roles = "Admin")]
        [HttpPost]
        public JsonResult getProject(int id)
        {
            var rs = db.C_Project.Where(s => s.Id == id).Select(s => new { s.Id, s.Title, s.Avatar, s.ContentProject, s.Date, s.Author }).FirstOrDefault();
            return Json(new { pj = rs });
        }

        [Authorize(Roles = "Admin")]
        [HttpPost]
        public JsonResult Create(C_Project project)
        {
            try
            {
                project.Date = DateTime.Now;
                db.C_Project.Add(project);
                db.SaveChanges();
                var rs = db.C_Project.Select(s => new { s.Id, s.Title, s.Avatar, s.ContentProject, s.Date, s.Author });
                return Json(new { msg = "Thêm thành công", pj = rs });
            }
            catch
            {
                return Json(new { msg = "Có lỗi xảy ra. Vui lòng thử lại" });
            }
        }

        [Authorize(Roles = "Admin")]
        [HttpPost]
        public JsonResult Edit(C_Project project)
        {
            try
            {
                var blogs = db.C_Project.Find(project.Id);
                blogs.Title = project.Title;
                blogs.ContentProject = project.ContentProject;
                blogs.Author = project.Author;
                blogs.Avatar = project.Avatar;
                db.Entry(blogs).State = System.Data.Entity.EntityState.Modified;
                db.SaveChanges();
                var rs = db.C_Project.Select(s => new { s.Id, s.Title, s.Avatar, s.ContentProject, s.Date, s.Author });
                return Json(new { msg = "Chỉnh sửa thành công", pj = rs });
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
                var blog = db.C_Project.Find(id);
                db.Entry(blog).State = System.Data.Entity.EntityState.Deleted;
                db.SaveChanges();
                var rs = db.C_Project.Select(s => new { s.Id, s.Title, s.Avatar, s.ContentProject, s.Date, s.Author });
                return Json(new { msg = "Xoá thành công", pj = rs });
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
            string path = Server.MapPath("~/Images/Project/");
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