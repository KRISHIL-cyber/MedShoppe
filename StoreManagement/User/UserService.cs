using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StoreManagement.User
{
    public class UserService: IUser
    {
        Model1 m1 = new Model1();

        public int Login(user u)
        {
            user tmp = m1.user.Where(se => se.Username == u.Username && se.Password == u.Password).FirstOrDefault<user>();


            if (tmp != null)
            {
                int seller = Convert.ToInt32(tmp.IsSeller);
                return seller;
            }
            return 2;  //is for when user doesn't exist
        }

        public bool Signup(user u)
        {
            if (m1.user.Where(se => se.Username == u.Username || se.Email == u.Email).FirstOrDefault<user>() != null)
            {
                return false;
            }
            m1.user.Add(u);
            m1.SaveChanges();
            return true;

        }
    }
}
