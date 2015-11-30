using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;

namespace JetBox
{
    public partial class WebForm26 : System.Web.UI.Page
    {
        int count;

        protected void Page_Load(object sender, EventArgs e)
        {
            count = 0; 
        }

        protected void ButtonSubmit_Click(object sender, EventArgs e)
        {


            if (CheckBox1.Checked == true)
            {
                Session["1"] = TextBox2.Text;
                count += 1;
            }
            else Session["1"] = "";

            if (CheckBox2.Checked == true)
            {
                Session["2"] = TextBox9.Text;
                count += 1;
            }
            else Session["2"] = "";

            if (CheckBox3.Checked == true)
            {
                Session["3"] = TextBox10.Text;
                count += 1;
            }
            else Session["3"] = "";

            if (CheckBox4.Checked == true)
            {
                Session["4"] = TextBox11.Text;
                count += 1;
            }
            else Session["4"] = "";

            if (CheckBox5.Checked == true)
            {
                Session["5"] = TextBox12.Text;
                count += 1;
            }
            else Session["5"] = "";

            if (CheckBox6.Checked == true)
            {
                Session["6"] = TextBox13.Text;
                count += 1;
            }
            else Session["6"] = "";

            if (CheckBox7.Checked == true)
            {
                Session["7"] = TextBox14.Text;
                count += 1;
            }
            else Session["7"] = "";

            if (CheckBox8.Checked == true)
            {
                Session["8"] = TextBox15.Text;
                count += 1;
            }
            else Session["8"] = "";

            if (CheckBox9.Checked == true)
            {
                Session["9"] = TextBox16.Text;
                count += 1;
            }
            else Session["9"] = "";

            if (CheckBox10.Checked == true)
            {
                Session["10"] = TextBox17.Text;
                count += 1;
            }
            else Session["10"] = "";

            if (CheckBox11.Checked == true)
            {
                Session["11"] = TextBox18.Text;
                count += 1;
            }
            else Session["11"] = "";

            if (CheckBox12.Checked == true)
            {
                Session["12"] = TextBox19.Text;
                count += 1;
            }
            else Session["12"] = "";

            if (CheckBox13.Checked == true)
            {
                Session["13"] = TextBox20.Text;
                count += 1;
            }
            else Session["13"] = "";

            if (CheckBox14.Checked == true)
            {
                Session["14"] = TextBox21.Text;
                count += 1;
            }
            else Session["14"] = "";

            if (CheckBox15.Checked == true)
            {
                Session["15"] = TextBox12.Text;
                count += 1;
            }
            else Session["15"] = "";

            if (CheckBox16.Checked == true)
            {
                Session["16"] = TextBox23.Text;
                count += 1;
            }
            else Session["16"] = "";

            if (CheckBox17.Checked == true)
            {
                Session["17"] = TextBox24.Text;
                count += 1;
            }
            else Session["17"] = "";

            if (CheckBox18.Checked == true)
            {
                Session["18"] = TextBox25.Text;
                count += 1;
            }
            else Session["18"] = "";

            if (count <= 3)
            {
                //do somthing with the list
                Response.Redirect("Checkout.aspx");
            }
            else
            {
                // tell them they have to many movies
                ButtonSubmit.Attributes.Add("onClick", "javascript:alert('You can only rent three movies. You have "+count+" selected');");
                count = 0;
                //Response.Redirect("MovieList.aspx");
            }
        }

    }
}