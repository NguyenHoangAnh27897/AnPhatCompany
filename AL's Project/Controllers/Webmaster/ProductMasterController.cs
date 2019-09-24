using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using AL_Project.Models;

namespace AL_Project.Controllers.Webmaster
{
    public class ProductMasterController : Controller
    {
        CompanyEntities db = new CompanyEntities();
        // GET: ProductMaster
        [Authorize(Roles = "Admin")]
        public ActionResult Index()
        {
            return View();
        }

        [Authorize(Roles = "Admin")]
        [HttpPost]
        public JsonResult getProduct()
        {
            var rs = db.C_Product.Select(s => new { s.Id, s.CareerContent, s.BusinessTitle,s.BusinessContent,s.CareerTitle }).FirstOrDefault();
            return Json(new { pro = rs });
        }

        [Authorize(Roles = "Admin")]
        [HttpPost]
        public JsonResult Edit(C_Product product)
        {
            try
            {
                db.Entry(product).State = System.Data.Entity.EntityState.Modified;
                db.SaveChanges();
                var rs = db.C_Product.Where(s => s.Id == 1).Select(s => new { s.Id, s.CareerContent, s.BusinessTitle, s.BusinessContent, s.CareerTitle }).FirstOrDefault();
                return Json(new { msg = "Chỉnh sửa thành công", pro = rs });
            }
            catch (Exception e)
            {
                return Json(new { msg = "Có lỗi xảy ra. Vui lòng thử lại" });
            }
        }
    }
}