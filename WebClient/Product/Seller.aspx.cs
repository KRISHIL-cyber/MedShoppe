using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebClient.StoreServiceReference;

namespace WebClient.Product
{
    public partial class Seller : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"].ToString() == "none")
            {
                Response.Redirect("/User/Login.aspx");
            }
            GetMedicines();
        }


        private void GetMedicines()
        {
            StoreServiceReference.StoreClient pd = new StoreServiceReference.StoreClient();
            DataSet ds = pd.Display();
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }


        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int pid = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString());
            StoreServiceReference.StoreClient pd = new StoreServiceReference.StoreClient();
            pd.Delete(pid);
            Response.Write("<script>alert('Deleted successfully')</script>");
            GetMedicines();
        }

      
        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Product/AddMedicine.aspx");
        }
    }
}