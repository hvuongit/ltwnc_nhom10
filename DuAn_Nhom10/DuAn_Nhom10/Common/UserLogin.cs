using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace DuAn_Nhom10.Common
{
    [Serializable]
    public class UserLogin
    {
        private long userID;
        private string userName;

        public long UserID { get => userID; set => userID = value; }
        public string UserName { get => userName; set => userName = value; }
    }
}