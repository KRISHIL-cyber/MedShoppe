using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebClient.StoreServiceReference;

namespace WebClient.Product
{
    public partial class AddMedicine : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"].ToString() == "none")
            {
                Response.Redirect("/User/Login.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            StoreServiceReference.StoreClient pd = new StoreServiceReference.StoreClient();
            Medicine m = new Medicine();
            m.CategoryName = Categories.SelectedValue;
            m.BrandName = Brandnm.Text.Trim();
            m.Description = Desc.Text.Trim();
            m.MedicineName = Medicinenm.Text.Trim();
            m.ExpDate = Convert.ToDateTime(Expdate.Text);
            m.Stock = Convert.ToInt32(quantity.Text.Trim());
            m.Price = (float)Convert.ToDouble(Price.Text.Trim());

            if (RadioButton1.Checked)
                m.Type = true;
            else
                m.Type = false;
            bool res = pd.Add(m);
            if (res)
                Response.Write("<script>alert('Added Successfully')</script>");
            else
            {
                bool res2 = pd.Update(m);
                Response.Write("<script>alert('Updated Successfully')</script>");
            }
            Response.Redirect("/Product/Seller.aspx");
            Clear();
        }
        private void Clear()
        {
            Categories.SelectedIndex = -1;
            Brandnm.Text = string.Empty;
            Medicinenm.Text = string.Empty;
            Desc.Text = string.Empty;
            quantity.Text = string.Empty;
            Price.Text = string.Empty;
            Expdate.Text = string.Empty;
            if (RadioButton1.Checked)
                RadioButton1.Checked = false;
            else
                RadioButton2.Checked = false;

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Clear();
        }
    }
}