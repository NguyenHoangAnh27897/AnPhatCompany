using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using AL_Project.Models;

namespace AL_s_Project.Controllers
{
    public class HomeController : Controller
    {
        CompanyEntities db = new CompanyEntities();
        public ActionResult Index()
        {
            return View();
        }

        [HttpPost]
        public JsonResult getHomepage()
        {
            var rs = db.C_Homepage.Where(s => s.Id == 1).Select(s => new { s.Id, s.Title01, s.Title02, s.Title03, s.Title04, s.Title05, s.Title06, s.Content01, s.Content02, s.Content03, s.Picture01, s.Picture02, s.Picture03, s.Picture04, s.SubTitle01, s.SubTitle02, s.SubTitle03, s.Text01, s.Text02, s.Text03, s.Text04, s.Text05, s.Text06, s.TextTitle01, s.TextTitle02, s.TextTitle03, s.TextTitle04, s.TextTitle05, s.TextTitle06 }).FirstOrDefault();
            return Json(new { hp = rs });
        }

        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }

        [HttpPost]
        public JsonResult getAbout()
        {
            var rs = db.C_About.Where(s => s.Id == 1).Select(s => new { s.Title,s.Picture,s.SubContent01,s.SubContent02,s.ContentAbout }).FirstOrDefault();
            return Json(new { ab = rs });
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }

        [HttpPost]
        public JsonResult getContact()
        {
            var rs = db.C_Contact.Where(s => s.Id == 1).Select(s => new { s.Phone, s.Address, s.Email }).FirstOrDefault();
            return Json(new { co = rs });
        }

        public ActionResult Mission()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }

        [HttpPost]
        public JsonResult getMission()
        {
            var rs = db.C_Mission.Where(s => s.Id == 1).Select(s => new { s.Title,s.SubTitle, s.SubContent01, s.SubContent02, s.SubContent03, s.SubContentTitle01,s.SubContentTitle02,s.SubContentTitle03 }).FirstOrDefault();
            return Json(new { mi = rs });
        }

        public ActionResult Policy()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }

        [HttpPost]
        public JsonResult getPolicy()
        {
            var rs = db.C_Policy.Where(s => s.Id == 1).Select(s => new { s.Title, s.ContentPolicy }).FirstOrDefault();
            return Json(new { po = rs });
        }

        public ActionResult CareerProduct()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }

        public ActionResult BusinessProduct()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }

        [HttpPost]
        public JsonResult getProduct()
        {
            var rs = db.C_Product.Where(s => s.Id == 1).Select(s => new { s.CareerTitle, s.CareerContent, s.BusinessTitle, s.BusinessContent }).FirstOrDefault();
            return Json(new { pro = rs });
        }
    }
}