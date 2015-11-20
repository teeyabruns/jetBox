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
    public partial class WebForm7 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonSignin_Click(object sender, EventArgs e)
        {
            if (txtPassword.Text == "" || txtUserID.Text == "")
            {
                if (txtPassword.Text == "")
                {
                    LabelPasswordWarning.Text = "*Required";
                    LabelPasswordWarning.Visible = true;
                }

                if (txtUserID.Text == "")
                {
                    LabelIDWarning.Text = "*Required";
                    LabelIDWarning.Visible = true;
                }

            }
            else
            {

                string userName = txtUserID.Text,
                        userPassword = txtPassword.Text;

                SqlConnection db = new SqlConnection(SqlDataSource1.ConnectionString);

                SqlCommand cmd = new SqlCommand();

                cmd.CommandType = System.Data.CommandType.Text;
                cmd.CommandText = "SELECT COUNT(*) FROM [User] WHERE ([User_Email] = '" + userName + "')";
                cmd.Connection = db;
                db.Open();

                LabelIDWarning.Text = cmd.ToString(); 
                int cat = (int)cmd.ExecuteScalar();

                /************************************************************************************************
                 *
                 * function: Looks for the Username entered by the client. 
                 *
                 ************************************************************************************************/

                try
                {
                    if (cat == 1)
                    {
                        LabelIDWarning.Text = "Sucsess!";
                        LabelIDWarning.Visible = true;
                        LabelPasswordWarning.Visible = false;
                    }
                    else
                    {
                        LabelIDWarning.Text = "User Name not found";
                        LabelIDWarning.Visible = true;
                        cat = 0;
                    }

                }
                catch
                {

                    LabelIDWarning.Text = "Error!";
                    LabelIDWarning.Visible = true;

                }
                finally
                {

                    db.Close();
                }

                /************************************************************************************************
                 *
                 * function: Looks for the password of the matching username above. 
                 *
                 ************************************************************************************************/

                cmd.CommandType = System.Data.CommandType.Text;
                cmd.CommandText = "SELECT COUNT(*) FROM [User] WHERE ([User_Password] = '" + userPassword + "')";
                cmd.Connection = db;
                db.Open();
                cat += (int)cmd.ExecuteScalar();

                try
                {
                    if (cat == 2)
                    {
                        LabelIDWarning.Text = "Sucsess!";
                        LabelIDWarning.Visible = true;
                        LabelPasswordWarning.Visible = false;

                        Response.Redirect("/home.aspx");

                    }
                    else
                    {
                        LabelPasswordWarning.Text = "Incorrect Password";
                        LabelPasswordWarning.Visible = true;
                        cat = 0;
                    }

                }
                catch
                {

                    LabelIDWarning.Text = "Error!";
                    LabelIDWarning.Visible = true;
                }
                finally
                {

                    db.Close();
                }
            }
        }
    }
}