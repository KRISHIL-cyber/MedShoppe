using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StoreManagement.User
{
    public class LoginService : ILogin
    {
        Model1 m1 = new Model1();
        public bool Login(user u)
        {
            if (m1.user.Where(se => se.Username == u.Username && se.Password == u.Password).FirstOrDefault<user>() != null)
            {
                return true;
            }
            return false;
        }
    }
}
