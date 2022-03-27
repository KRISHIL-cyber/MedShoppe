using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StoreManagement.User
{
    public class SignUpService: ISignup
    {
        Model1 m1 = new Model1();
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
