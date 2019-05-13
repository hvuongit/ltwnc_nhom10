using DuAn_Nhom10.Common;
using DuAn_Nhom10.Models;
using Model.Dao;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace DuAn_Nhom10.Areas.Admin.Controllers
{
    public class LoginController : Controller
    {
        // GET: Admin/Login

        public ActionResult Index()
        {
            return View();
        }
        public ActionResult Login(LoginModel model)
        {
            if (ModelState.IsValid)
            {
                var dao = new UserDao();
                var result = dao.Login(model.UserName, Encryptor.MD5(model.PassWord));
                switch (result)
                {
                    case -2:
                        ModelState.AddModelError("", "Sai mật khẩu!");
                        break;
                    case -1:
                        ModelState.AddModelError("", "Tài khoản bị khóa!");
                        break;
                    case 0:
                        ModelState.AddModelError("", "Sai tên đăng nhập!");
                        break;
                    case 1:
                        var user = dao.GetByUserName(model.UserName);
                        var userSesion = new UserLogin();
                        userSesion.UserName = user.Username;
                        userSesion.UserID = user.ID;
                        Session.Add(ComonConstants.USER_SESSION, userSesion);
                        return RedirectToAction("Index", "Home");
                }

            }
            return View("Index");
        }
    }
}