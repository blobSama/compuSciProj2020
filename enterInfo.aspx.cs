using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace compuSciProj2020
{
    public partial class enterInfo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void submit_Click(object sender, EventArgs e)
        {
            int amont = int.Parse(Request.Form["amnt"]);
            String mAddrs = Request.Form["mail"];
            String Uphone = Request.Form["phone"];
            String catgry = Request.Form["enquiry"];
            String features = Request.Form["ftrs"];
            int wCost = int.Parse(Request.Form["cost"]);
            String pic = watchPic.Text;

            Watch w1 = new Watch();
            w1.Cat = catgry;
            w1.Amnt = amont;
            w1.Cst = wCost;
            w1.Ftrs = features;
            w1.MailAddrs = mAddrs;
            w1.Phone = Uphone;
            w1.Pic = pic;

            if (validation.CheckAll(w1))
            {
                watchService ws = new watchService();
                ws.InsertWatch(w1);
                Response.Redirect("enterInfo.aspx");
            }
            else
            {
                submit.Enabled = false;
                submit.CssClass = "sub1";
                submitWrng.Text = "Please check your input.";
            }
        }
    }
}