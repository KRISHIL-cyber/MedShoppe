using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebClient.UserServiceReference;

namespace WebClient.User
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["username"] = "none";
            Session["Bill"] = Convert.ToDouble(0);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            UserServiceReference.UserClient lc = new UserServiceReference.UserClient();
            user u = new user();
            u.Username = TextBox1.Text.Trim();
            u.Password = TextBox2.Text.Trim();

            int res = lc.Login(u);

            if (res == 1)
            {
                Label1.Text = "Ready to use! Seller";
                Session["username"] = u.Username;
                Response.Redirect("/Product/Seller.aspx");
            }
            else if (res == 0)
            {
                Label1.Text = "Ready to use ! Customer";
                Session["username"] = u.Username;
                Response.Redirect("/Product/Consumer.aspx");
            }
            else
                Label1.Text = "Invalid Creds or User not Exists!!";
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("/User/SignUp.aspx");
        }
    }
}