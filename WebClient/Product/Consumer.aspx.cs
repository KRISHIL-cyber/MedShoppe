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
    public partial class Consumer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
            if (!IsPostBack)
            {
                if (Session["username"].ToString() == "none")
                {
                    Response.Redirect("/User/Login.aspx");
                }
                Session["Bill"] = Convert.ToDouble(0);
                GetMedicines();
            }
        }
        private void GetMedicines()
        {
            StoreServiceReference.StoreClient pd = new StoreServiceReference.StoreClient();
            DataSet ds = pd.Display();
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        private void Update(DataRow dr, int quantity)
        {
            StoreServiceReference.StoreClient pd = new StoreServiceReference.StoreClient();
            Medicine m = new Medicine();
            m.CategoryName = (string)dr["CategoryName"];
            m.Description = (string)dr["Description"];
            m.ExpDate = Convert.ToDateTime(dr["ExpDate"]);
            m.MedicineName = (string)dr["MedicineName"];
            
            

            m.Price = (float)Convert.ToDouble(dr["Price"]);
            m.BrandName = (string)dr["BrandName"];
            m.Type = Convert.ToBoolean(dr["Type"]);
            m.Stock = Convert.ToInt32(dr["Stock"]);

            if (quantity > m.Stock)
            {
                m.Stock = m.Stock;
                quantity = 0;
                pd.Update(m);
            }
            else if (quantity == m.Stock)
            {
                m.Stock -= quantity;
                pd.Delete((int)dr["id"]);
            }
            else
            {
                m.Stock -= quantity;
                pd.Update(m);
            }
            float total = m.Price*quantity;
            Session["Bill"] = Convert.ToDouble(Session["Bill"]) + total;
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            foreach (GridViewRow row in GridView1.Rows)
            {

                TextBox tb = row.FindControl("TextBox1") as TextBox;

                int quantity = 0;
                if (tb.Text != "")
                    quantity = Convert.ToInt32(tb.Text);
                else
                {
                    quantity = 0;
                    continue;
                }
                //Label2.Text = quantity.ToString();
                int pid  = Convert.ToInt32(row.Cells[0].Text);
                

                StoreServiceReference.StoreClient pd = new StoreServiceReference.StoreClient();
                DataSet ds = pd.GetById(pid);
                DataRow dr = ds.Tables[0].Rows[0];
                Update(dr, quantity);
            }
            
            Label1.Text = "Total Bill:"+Session["Bill"].ToString();
            Session["Bill"] = Convert.ToDouble(0);
            GetMedicines();
        }
    }
}