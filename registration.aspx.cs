using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace compuSciProj2020
{
    public partial class registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            Label3.Text = "";
            Label4.Text = "";
            Label5.Text = "";
            bool ok = true;
            User u1 = new User();
            u1.ID = TextBox1.Text;
            if (!validation.CheckId(u1.ID))
            {
                ok = false;
                Label4.Text = "Please enter a correct id.";
            }
            u1.Firstname = TextBox2.Text;
            if (!validation.CheckFName(u1.Firstname))
            {
                ok = false;
                Label5.Text = "Please enter a real name.";
            }
            userService us = new userService();
            if (ok)
            {
                us.InsertUser(u1);
                Label3.Text = "Your info was entered successfuly";
            }
        }
    }
}