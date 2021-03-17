using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace compuSciProj2020
{
    public partial class usersData : System.Web.UI.Page
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
                Response.Redirect("Homepage.aspx");
            }
        }

        public void PopulateGrid()
        {
            userService us = new userService();
            GridView1.DataSource = us.GetUsers();
            GridView1.DataBind();
        }
    }
}