using Model.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model.Dao
{
    public  class PerDao
    {
        Nhom10DbContext db = null;
        public PerDao()
        {
            db = new Nhom10DbContext();
        }
        public List<Permistion> listAll()
        {
            return db.Permistions.Where(x => x.Status == true).ToList();
        }
    }
}
