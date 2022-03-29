using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StoreManagement.StoreManager
{
    public class StoreManagementService:IStore
    {
        Model1 m1 = new Model1();
        public bool Add(Medicine m)
        {
            if (m1.medicines.Where(se => se.MedicineName == m.MedicineName && se.BrandName == m.BrandName).FirstOrDefault<Medicine>() != null)
            {
                return false;
            }
            m1.medicines.Add(m);
            m1.SaveChanges();
            return true;

        }

        public bool Delete(int id)
        {
            Medicine tmp= m1.medicines.Where(a => a.id.Equals(id)).SingleOrDefault();
            if (tmp==null)
                return false;

            m1.medicines.Remove(tmp);
            m1.SaveChanges();
            return true;
        }

        public bool Update(int id, Medicine m)
        {
            Medicine tmp = m1.medicines.Where(a => a.id.Equals(id)).SingleOrDefault();
            if (tmp==null)
                return false;

            tmp.CategoryName = m.CategoryName;
            tmp.BrandName = m.BrandName;
            tmp.Description = m.Description;
            tmp.Type = m.Type;
            tmp.MedicineName = m.MedicineName;
            tmp.ExpDate = m.ExpDate;
            tmp.Stock = m.Stock;
            tmp.Price = m.Price;

            m1.SaveChanges();
            return true;
        }
    }
}
