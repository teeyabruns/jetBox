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

            if (Session["1"].ToString() != "") movie1lbl.Text = Session["1"].ToString();
            else if (Session["2"].ToString() != "") movie1lbl.Text = Session["2"].ToString();
            else if (Session["3"].ToString() != "") movie1lbl.Text = Session["3"].ToString();
            else if (Session["4"].ToString() != "") movie1lbl.Text = Session["4"].ToString();
            else if (Session["5"].ToString() != "") movie1lbl.Text = Session["5"].ToString();
            else if (Session["6"].ToString() != "") movie1lbl.Text = Session["6"].ToString();
            else if (Session["7"].ToString() != "") movie1lbl.Text = Session["7"].ToString();
            else if (Session["8"].ToString() != "") movie1lbl.Text = Session["8"].ToString();
            else if (Session["9"].ToString() != "") movie1lbl.Text = Session["9"].ToString();
            else if (Session["10"].ToString() != "") movie1lbl.Text = Session["10"].ToString();
            else if (Session["11"].ToString() != "") movie1lbl.Text = Session["11"].ToString();
            else if (Session["12"].ToString() != "") movie1lbl.Text = Session["12"].ToString();
            else if (Session["13"].ToString() != "") movie1lbl.Text = Session["13"].ToString();
            else if (Session["14"].ToString() != "") movie1lbl.Text = Session["14"].ToString();
            else if (Session["15"].ToString() != "") movie1lbl.Text = Session["15"].ToString();
            else if (Session["16"].ToString() != "") movie1lbl.Text = Session["16"].ToString();
            else if (Session["17"].ToString() != "") movie1lbl.Text = Session["17"].ToString();
            else if (Session["18"].ToString() != "") movie1lbl.Text = Session["18"].ToString();
            else movie1lbl.Text = "No Movie Selected"; 

            if (Session["1"].ToString() != "" && !Session["1"].ToString().Equals(movie1lbl.Text)) movie2lbl.Text = Session["1"].ToString();
            else if (Session["2"].ToString() != "" && !Session["2"].ToString().Equals(movie1lbl.Text)) movie2lbl.Text = Session["2"].ToString();
            else if (Session["3"].ToString() != "" && !Session["3"].ToString().Equals(movie1lbl.Text)) movie2lbl.Text = Session["3"].ToString();
            else if (Session["4"].ToString() != "" && !Session["4"].ToString().Equals(movie1lbl.Text)) movie2lbl.Text = Session["4"].ToString();
            else if (Session["5"].ToString() != "" && !Session["5"].ToString().Equals(movie1lbl.Text)) movie2lbl.Text = Session["5"].ToString();
            else if (Session["6"].ToString() != "" && !Session["6"].ToString().Equals(movie1lbl.Text)) movie2lbl.Text = Session["6"].ToString();
            else if (Session["7"].ToString() != "" && !Session["7"].ToString().Equals(movie1lbl.Text)) movie2lbl.Text = Session["7"].ToString();
            else if (Session["8"].ToString() != "" && !Session["8"].ToString().Equals(movie1lbl.Text)) movie2lbl.Text = Session["8"].ToString();
            else if (Session["9"].ToString() != "" && !Session["9"].ToString().Equals(movie1lbl.Text)) movie2lbl.Text = Session["9"].ToString();
            else if (Session["10"].ToString() != "" && !Session["10"].ToString().Equals(movie1lbl.Text)) movie2lbl.Text = Session["10"].ToString();
            else if (Session["11"].ToString() != "" && !Session["11"].ToString().Equals(movie1lbl.Text)) movie2lbl.Text = Session["11"].ToString();
            else if (Session["12"].ToString() != "" && !Session["12"].ToString().Equals(movie1lbl.Text)) movie2lbl.Text = Session["12"].ToString();
            else if (Session["13"].ToString() != "" && !Session["13"].ToString().Equals(movie1lbl.Text)) movie2lbl.Text = Session["13"].ToString();
            else if (Session["14"].ToString() != "" && !Session["14"].ToString().Equals(movie1lbl.Text)) movie2lbl.Text = Session["14"].ToString();
            else if (Session["15"].ToString() != "" && !Session["15"].ToString().Equals(movie1lbl.Text)) movie2lbl.Text = Session["15"].ToString();
            else if (Session["16"].ToString() != "" && !Session["16"].ToString().Equals(movie1lbl.Text)) movie2lbl.Text = Session["16"].ToString();
            else if (Session["17"].ToString() != "" && !Session["17"].ToString().Equals(movie1lbl.Text)) movie2lbl.Text = Session["17"].ToString();
            else if (Session["18"].ToString() != "" && !Session["18"].ToString().Equals(movie1lbl.Text)) movie2lbl.Text = Session["18"].ToString();
            else movie2lbl.Text = "No Movie Selected";

            if (Session["1"].ToString() != "" && !Session["1"].ToString().Equals(movie2lbl.Text) && !Session["1"].ToString().Equals(movie1lbl.Text)) movie3lbl.Text = Session["1"].ToString();
            else if (Session["2"].ToString() != "" && !Session["2"].ToString().Equals(movie2lbl.Text) && !Session["2"].ToString().Equals(movie1lbl.Text)) movie3lbl.Text = Session["2"].ToString();
            else if (Session["3"].ToString() != "" && !Session["3"].ToString().Equals(movie2lbl.Text) && !Session["3"].ToString().Equals(movie1lbl.Text)) movie3lbl.Text = Session["3"].ToString();
            else if (Session["4"].ToString() != "" && !Session["4"].ToString().Equals(movie2lbl.Text) && !Session["4"].ToString().Equals(movie1lbl.Text)) movie3lbl.Text = Session["4"].ToString();
            else if (Session["5"].ToString() != "" && !Session["5"].ToString().Equals(movie2lbl.Text) && !Session["5"].ToString().Equals(movie1lbl.Text)) movie3lbl.Text = Session["5"].ToString();
            else if (Session["6"].ToString() != "" && !Session["6"].ToString().Equals(movie2lbl.Text) && !Session["6"].ToString().Equals(movie1lbl.Text)) movie3lbl.Text = Session["6"].ToString();
            else if (Session["7"].ToString() != "" && !Session["7"].ToString().Equals(movie2lbl.Text) && !Session["7"].ToString().Equals(movie1lbl.Text)) movie3lbl.Text = Session["7"].ToString();
            else if (Session["8"].ToString() != "" && !Session["8"].ToString().Equals(movie2lbl.Text) && !Session["8"].ToString().Equals(movie1lbl.Text)) movie3lbl.Text = Session["8"].ToString();
            else if (Session["9"].ToString() != "" && !Session["9"].ToString().Equals(movie2lbl.Text) && !Session["9"].ToString().Equals(movie1lbl.Text)) movie3lbl.Text = Session["9"].ToString();
            else if (Session["10"].ToString() != "" && !Session["10"].ToString().Equals(movie2lbl.Text) && !Session["10"].ToString().Equals(movie1lbl.Text)) movie3lbl.Text = Session["10"].ToString();
            else if (Session["11"].ToString() != "" && !Session["11"].ToString().Equals(movie2lbl.Text) && !Session["11"].ToString().Equals(movie1lbl.Text)) movie3lbl.Text = Session["11"].ToString();
            else if (Session["12"].ToString() != "" && !Session["12"].ToString().Equals(movie2lbl.Text) && !Session["12"].ToString().Equals(movie1lbl.Text)) movie3lbl.Text = Session["12"].ToString();
            else if (Session["13"].ToString() != "" && !Session["13"].ToString().Equals(movie2lbl.Text) && !Session["13"].ToString().Equals(movie1lbl.Text)) movie3lbl.Text = Session["13"].ToString();
            else if (Session["14"].ToString() != "" && !Session["14"].ToString().Equals(movie2lbl.Text) && !Session["14"].ToString().Equals(movie1lbl.Text)) movie3lbl.Text = Session["14"].ToString();
            else if (Session["15"].ToString() != "" && !Session["15"].ToString().Equals(movie2lbl.Text) && !Session["15"].ToString().Equals(movie1lbl.Text)) movie3lbl.Text = Session["15"].ToString();
            else if (Session["16"].ToString() != "" && !Session["16"].ToString().Equals(movie2lbl.Text) && !Session["16"].ToString().Equals(movie1lbl.Text)) movie3lbl.Text = Session["16"].ToString();
            else if (Session["17"].ToString() != "" && !Session["17"].ToString().Equals(movie2lbl.Text) && !Session["17"].ToString().Equals(movie1lbl.Text)) movie3lbl.Text = Session["17"].ToString();
            else if (Session["18"].ToString() != "" && !Session["18"].ToString().Equals(movie2lbl.Text) && !Session["18"].ToString().Equals(movie1lbl.Text)) movie3lbl.Text = Session["18"].ToString();
            else movie3lbl.Text = "No Movie Selected"; 
        }

        protected void rentbtn_Click(object sender, EventArgs e)
        {
            //decrement quantity of movies being rented

            //send to successful page
            Response.Redirect("/RentSuccess.aspx");
        }
    }
}