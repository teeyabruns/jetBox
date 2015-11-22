using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JetBox
{
    public partial class WebForm13 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = (string)Session["uFirst"];
            Label1.Visible = true;
        }

        protected void rentbtn_Click(object sender, EventArgs e)
        {
            //decrement quantity of movies being rented

            //send to successful page
            Response.Redirect("/RentSuccess.aspx");
        }
    }
}