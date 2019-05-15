using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace DuAn_Nhom10.Models
{
    public class PermissionList
    {
        public static List<string> ListPerm = new List<string> { "Admin", "Nhân viên", "Giáo viên", "Học viên" };


        int id;
        string name;
    }
}