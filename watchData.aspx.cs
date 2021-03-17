using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace compuSciProj2020
{
    public partial class watchData : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            PopulateGrid();
            if (Session["curUser"] != null)
            {
                hello.Text = "Hello, " + ((User)Session["curUser"]).Firstname;
            }
            else
            {
                hello.Text = "Hello, Guest";
            }
        }

        public void PopulateGrid()
        {
            ProductService ps = new ProductService();
            GridView1.DataSource = ps.GetProducts();
            GridView1.DataBind();
        }
    }
}