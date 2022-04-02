using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebClient.UserServiceReference;

namespace WebClient.User
{
    public partial class SignUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            UserServiceReference.UserClient sc = new UserServiceReference.UserClient();
            user u = new user();
            u.Username = TextBox1.Text;
            u.Email = TextBox2.Text;
            u.Password = TextBox3.Text;
            u.Mobileno = TextBox5.Text;
            u.Address = TextArea1.Value;
            u.IsSeller = CheckBox1.Checked;

            if (TextBox4.Text == TextBox3.Text)
            {
                bool res = sc.Signup(u);
                if (res)
                {
                    Label1.Text = "Ready To go!";
                    Response.Redirect("/User/Login.aspx");
                }
                else
                    Label1.Text = "User already exist";
            }
            else
                Label1.Text = "password dont match";
        }
    }
}