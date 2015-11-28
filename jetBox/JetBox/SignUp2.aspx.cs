using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Text.RegularExpressions;

namespace JetBox
{
    public partial class WebForm10 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LabelAddress.Visible = false;
            LabelFirst.Visible = false;
            LabelLast.Visible = false;
            LabelPassword1.Visible = false;
            LabelPassword2.Visible = false;
            txtuEmail.Text = (string)Session["uEmail"];
            txtuName.Text = (string)Session["uEmail"];
            Session["uFirst"] = txtFirst.Text;
        }

        protected void ButtonSubmit_Click(object sender, EventArgs e)
        {
            string uFirst = txtFirst.Text,
                    uLast = txtLast.Text,
                    uCountry = txtAddress.Text,
                    uPassword1 = txtPassword1.Text,
                    uPassword2 = txtPassword2.Text;


            if (txtFirst.Text == "" || txtLast.Text == "" || txtPassword1.Text == "" || txtPassword2.Text == "" || txtCity.Text == "" || txtAddress.Text == "" || txtAddress.Text == "" || txtPayment.Text == "")
            {
                if (txtFirst.Text == "") LabelFirst.Visible = true;
                else LabelFirst.Visible = false;
                if (txtAddress.Text == "") LabelAddress.Visible = true;
                else LabelAddress.Visible = false;
                if (txtState.Text == "") LabelSate.Visible = true;
                else LabelSate.Visible = false;
                if (txtZip.Text == "") LabelZip.Visible = true;
                else LabelZip.Visible = false;
                if (txtPayment.Text == "") LabelPayment.Visible = true;
                else LabelPayment.Visible = false;
                if (txtPayment.Text == "") LabelPayment.Visible = true;
                else LabelPayment.Visible = false;
                if (txtCity.Text == "") LabelCity.Visible = true;
                else LabelCity.Visible = false;
                if (txtZip.Text == "") LabelZip.Visible = true;
                else LabelZip.Visible = false;
                if (txtLast.Text == "") LabelLast.Visible = true;
                else LabelLast.Visible = false;
                if (txtPassword1.Text == "") LabelPassword1.Visible = true;
                else { LabelPassword1.Visible = false; }
                if (txtPassword2.Text == "") { LabelPassword2.Text = "*This field is required"; LabelPassword2.Visible = true; }
                else LabelPassword2.Visible = false;
            }


            else if (txtPassword1.Text != txtPassword2.Text)
            {
                LabelPassword2.Text = "*Password does not match!";
                LabelPassword2.Visible = true;
            }



            int count = 1;
            if (txtPassword1.Text.Length >= 8)
            {
                count++;

            }
            if (Regex.Match(txtPassword1.Text, @"[a-z]", RegexOptions.None).Success)
            {

                count++;
            }
            if (Regex.Match(txtPassword1.Text, @"[A-Z]", RegexOptions.None).Success)
            {

                count++;
            }
            if (Regex.Match(txtPassword1.Text, @"\d", RegexOptions.None).Success)
            {
                count++;
            }
            if (Regex.Match(txtPassword1.Text, @"^[a-zA-Z]", RegexOptions.None).Success)
            {
                count++;
            }

            SqlConnection db = new SqlConnection(SqlDataSource1.ConnectionString);

            SqlCommand cmd = new SqlCommand();

            cmd.CommandType = System.Data.CommandType.Text;
            cmd.CommandText = "INSERT INTO [User] (User_FName, User_LName, User_Address, User_City, User_State, User_Zip, User_Email, User_Password, User_PaymentInfo) VALUES ('" + txtFirst.Text + "','" + txtLast.Text + "', '" + txtAddress.Text + "','" + txtCity.Text + "' , '" + txtState.Text + "', '" + txtZip.Text + "', '" + txtuName.Text + "', '" + uPassword1 + "', '" + txtPayment.Text + "')";
            cmd.Connection = db;

            db.Open();


            try
            {

                if (count <= 5)
                {
                    LabelPassword1.Text = "*Incorrect format";
                    LabelPassword1.Visible = true;
                }
                else
                {

                    cmd.ExecuteNonQuery();
                    Response.Redirect("/Confirmation.aspx");
                }
            }

            catch
            {

                LabelPassword2.Text = "Database Error!";
                LabelPassword2.Visible = true;

            }
            finally
            {

                db.Close();
            }
        }
    }
}