using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using AL_Project.Models;

namespace AL_Project.Controllers.Webmaster
{
    public class PolicyMasterController : Controller
    {
        CompanyEntities db = new CompanyEntities();
        // GET: PolicyMaster
        [Authorize(Roles = "Admin")]
        public ActionResult Index()
        {
            return View();
        }

        [Authorize(Roles = "Admin")]
        [HttpPost]
        public JsonResult getPolicy()
        {
            var rs = db.C_Policy.Select(s => new { s.Id, s.Title, s.ContentPolicy }).FirstOrDefault();
            return Json(new { po = rs });
        }

        [Authorize(Roles = "Admin")]
        [HttpPost]
        public JsonResult Edit(C_Policy policy)
        {
            try
            {
                db.Entry(policy).State = System.Data.Entity.EntityState.Modified;
                db.SaveChanges();
                var rs = db.C_Policy.Where(s => s.Id == 1).Select(s => new { s.Id, s.Title, s.ContentPolicy }).FirstOrDefault();
                return Json(new { msg = "Chỉnh sửa thành công", po = rs });
            }
            catch (Exception e)
            {
                return Json(new { msg = "Có lỗi xảy ra. Vui lòng thử lại" });
            }
        }
    }
}