using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JetBox
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void lbInsert_Click(object sender, EventArgs e)
        {
            SqlDataSource1.InsertParameters["Movie_Title"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("txtTitle")).Text;
            SqlDataSource1.InsertParameters["Movie_Genre"].DefaultValue = ((DropDownList)GridView1.FooterRow.FindControl("ddMovieGenre2")).SelectedValue;
            SqlDataSource1.InsertParameters["Movie_Rating"].DefaultValue = ((DropDownList)GridView1.FooterRow.FindControl("ddMovieRating2")).SelectedValue;
            SqlDataSource1.InsertParameters["Movie_Description"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("txtDescription")).Text;
            SqlDataSource1.InsertParameters["Movie_UserRating"].DefaultValue = ((DropDownList)GridView1.FooterRow.FindControl("ddMovieUserRating2")).SelectedValue;
            SqlDataSource1.InsertParameters["Movie_Quantity"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("txtQuantity")).Text;

            SqlDataSource1.Insert();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("./AdminMain.aspx");
        }
    }
}