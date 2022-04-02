using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
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

        public DataSet Display()
        {
            var con_string = System.Configuration.ConfigurationManager.ConnectionStrings["Model1"].ConnectionString;

            SqlConnection con = new SqlConnection(con_string);
            DataSet ds = new DataSet();
            con.Open();
            

            string cmd = "SELECT * FROM Medicines";
            SqlDataAdapter adapter = new SqlDataAdapter(cmd, con);
            adapter.Fill(ds);
            return ds;
        }

        public bool Update(Medicine m)
        {
            Medicine tmp = m1.medicines.Where(a => a.MedicineName==m.MedicineName && a.BrandName==m.BrandName).SingleOrDefault();
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
