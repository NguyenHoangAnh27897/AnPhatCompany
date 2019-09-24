using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using AL_Project.Models;

namespace AL_Project.Controllers.Webmaster
{
    public class ContactMasterController : Controller
    {
        CompanyEntities db = new CompanyEntities();
        // GET: ContactMaster
        [Authorize(Roles = "Admin")]
        public ActionResult Index()
        {
            return View();
        }

        [Authorize(Roles = "Admin")]
        [HttpPost]
        public JsonResult getContact()
        {
            var rs = db.C_Contact.Select(s => new { s.Id, s.Phone, s.Address, s.Email }).FirstOrDefault();
            return Json(new { con = rs });
        }

        [Authorize(Roles = "Admin")]
        [HttpPost]
        public JsonResult Edit(C_Contact contact)
        {
            try
            {
                db.Entry(contact).State = System.Data.Entity.EntityState.Modified;
                db.SaveChanges();
                var rs = db.C_Contact.Where(s => s.Id == 1).Select(s => new { s.Id, s.Phone, s.Address, s.Email }).FirstOrDefault();
                return Json(new { msg = "Chỉnh sửa thành công", con = rs });
            }
            catch (Exception e)
            {
                return Json(new { msg = "Có lỗi xảy ra. Vui lòng thử lại" });
            }
        }
    }
}