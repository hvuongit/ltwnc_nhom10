using Model.EF;
using PagedList;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model.Dao
{
    public class UserDao
    {
        Nhom10DbContext db = null;
        public UserDao()
        {
            db = new Nhom10DbContext();
        }
        public User GetByID(int id)
        {
            return db.Users.Find(id);
        }

        public User GetByUserName(string userName)
        {
            return db.Users.SingleOrDefault(x => x.Username == userName);
        }

        //thêm mới
        public long Insert(User user)
        {
            user.CreatedDate = DateTime.Now;
            db.Users.Add(user);
            db.SaveChanges();
            return user.ID;
        }

        //kiểm tra dăng nhập
        public int Login(string userName, string passWord)
        {
            var result = db.Users.FirstOrDefault(x => x.Username == userName);
            if (result != null)
            {
                if (result.Status == false)
                {
                    //Tài khoản bị khóa
                    return -1;
                }
                else
                {

                    if (result.Password == passWord)
                    {
                        //đúng tên đăng nhập và mật khẩu
                        return 1;
                    }
                    else
                    {
                        // sai tên đăng nhập hoặc mật khẩu
                        return -2;
                    }
                }
            }
            // sai tên đăng nhập
            return 0;

        }


        //Phân trang
        public IEnumerable<User> ListAllPaging(int page, int pageSize)
        {
            return db.Users.OrderByDescending(x => x.CreatedDate).ToPagedList(page, pageSize);
        }

        //Xóa
        public bool Delete(int id)
        {
            try
            {
                var user = db.Users.Find(id);
                db.Users.Remove(user);
                db.SaveChanges();
                return true;
            }
            catch (Exception)
            {

                return false;
            }
        }
        public bool Update(User entity)
        {
            try
            {
                var user = db.Users.Find(entity.ID);
                if (!string.IsNullOrEmpty(entity.Password))
                {
                    user.Password = entity.Password;
                }
                user.Name = entity.Name;
                user.Address = entity.Address;
                user.Email = entity.Email;
                user.Phone = entity.Phone;
                user.ModifiedBy = entity.ModifiedBy;
                user.ModifiedDate = entity.ModifiedDate;
                db.SaveChanges();
                return true;
            }
            catch (Exception)
            {

                return false;
            }

        }
    }
}
