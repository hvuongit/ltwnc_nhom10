using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Model.EF;
using Model.Dao;
using DuAn_Nhom10.Common;

namespace DuAn_Nhom10.Areas.Admin.Controllers
{
    public class UserController : Controller
    {
        // GET: Admin/User
        
        public ActionResult Index(int page=1,int pageSize=10)
        {
            var dao = new UserDao();
            var model = dao.ListAllPaging(page, pageSize);
            return View(model);
        }
        [HttpGet]
        public ActionResult Create()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Create(User user)
        {
            if (ModelState.IsValid)
            {
                var dao = new UserDao();
                var passWordMd5 = Encryptor.MD5(user.Password);
                user.Password = passWordMd5;
                long id = dao.Insert(user);
                if (id > 0)
                {
                    return RedirectToAction("Index", "User");
                }
                else
                {
                    ModelState.AddModelError("", "Thêm thất bại");
                }
            }
            return View("Index");
        }

        [HttpDelete]
        public ActionResult Delete(int id)
        {
            var result = new UserDao().Delete(id);
            if (!result)
            {
                ModelState.AddModelError("", "Xóa thất bại");
            }
            return RedirectToAction("Index");
        }

    }
}