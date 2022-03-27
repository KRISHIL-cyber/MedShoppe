using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebClient.LoginReference;

namespace WebClient.User
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            LoginReference.LoginClient lc = new LoginReference.LoginClient();
            user u = new user();
            u.Username = TextBox1.Text;
            u.Password = TextBox2.Text;

            bool res = lc.Login(u);

            if (res)
            {
                Label1.Text = "Ready to use!";
            }
            else
                Label1.Text = "Invalid Creds or User not Exists!!";
        }
    }
}