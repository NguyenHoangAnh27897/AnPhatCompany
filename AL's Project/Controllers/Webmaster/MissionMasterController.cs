using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using AL_Project.Models;

namespace AL_Project.Controllers.Webmaster
{
    public class MissionMasterController : Controller
    {
        CompanyEntities db = new CompanyEntities();
        // GET: MissionMaster
        [Authorize(Roles = "Admin")]
        public ActionResult Index()
        {
            return View();
        }

        [Authorize(Roles = "Admin")]
        [HttpPost]
        public JsonResult getMission()
        {
            var rs = db.C_Mission.Select(s => new { s.Id, s.Title, s.SubTitle, s.SubContentTitle01,s.SubContentTitle02,s.SubContentTitle03, s.SubContent03, s.SubContent01, s.SubContent02 }).FirstOrDefault();
            return Json(new { mi = rs });
        }

        [Authorize(Roles = "Admin")]
        [HttpPost]
        public JsonResult Edit(C_Mission mission)
        {
            try
            {
                db.Entry(mission).State = System.Data.Entity.EntityState.Modified;
                db.SaveChanges();
                var rs = db.C_Mission.Where(s => s.Id == 1).Select(s => new { s.Id, s.Title, s.SubTitle, s.SubContentTitle01, s.SubContentTitle02, s.SubContentTitle03, s.SubContent03, s.SubContent01, s.SubContent02 }).FirstOrDefault();
                return Json(new { msg = "Chỉnh sửa thành công", mi = rs });
            }
            catch (Exception e)
            {
                return Json(new { msg = "Có lỗi xảy ra. Vui lòng thử lại" });
            }
        }
    }
}