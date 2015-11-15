using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;

namespace JetBox
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonSignin_Click(object sender, EventArgs e)
        {
            if (txtEmail.Text == "" || txtUserID.Text == "")
            {
                if (txtEmail.Text == "")
                {
                    LabelEmailWarning.Text = "*Required";
                    LabelEmailWarning.Visible = true;
                }

                if (txtUserID.Text == "")
                {
                    LabelIDWarning.Text = "*Required";
                    LabelIDWarning.Visible = true;
                }

            }
            else
            {

                string value = txtUserID.Text;
                /* 
                SqlConnection db = new SqlConnection(SqlDataSource1.ConnectionString);

                SqlCommand cmd = new SqlCommand();

                cmd.CommandType = System.Data.CommandType.Text;
                cmd.CommandText = "SELECT COUNT(*) FROM [User] WHERE ([User_Username] = '" + value + "')";
                cmd.Connection = db;

                db.Open();
                */

                try
                {
                    //This is a dummy variable until the database is installed
                    int cat = 0 ; 
                    //int cat = (int)cmd.ExecuteScalar();
                    if (cat == 0)
                    {
                        LabelIDWarning.Text = "Success!";
                        LabelIDWarning.Visible = true;
                        LabelEmailWarning.Visible = false;

                        Session["uName"] = txtUserID.Text;
                        Session["uEmail"] = txtEmail.Text;
                        Response.Redirect("/SignUp.aspx");

                    }
                    else
                    {
                        LabelIDWarning.Text = "Not Unique!";
                        LabelIDWarning.Visible = true;
                    }

                }
                catch
                {

                    LabelIDWarning.Text = "Error!";
                    LabelIDWarning.Visible = true;

                }
                finally
                {

                    //db.Close();
                }
            }
        }
    }
}