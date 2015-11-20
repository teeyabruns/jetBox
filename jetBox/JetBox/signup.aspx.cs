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
            if (txtEmail.Text == "")
            {
                if (txtEmail.Text == "")
                {
                    LabelEmailWarning.Text = "*Required";
                    LabelEmailWarning.Visible = true;
                }

            }
            else
            {


                string value = txtEmail.Text;
                 
            
                SqlConnection db = new SqlConnection(SqlDataSource1.ConnectionString);

                SqlCommand cmd = new SqlCommand();

                cmd.CommandType = System.Data.CommandType.Text;
                cmd.CommandText = "SELECT COUNT(*) FROM [User] WHERE ([User_Email] = '" + value + "')";
                cmd.Connection = db;

                db.Open();
                

                try
                {
                    //This is a dummy variable until the database is installed
                    int cat = 0; 
                    cat = (int)cmd.ExecuteScalar();
                    if (cat == 0)
                    {
                        LabelEmailWarning.Text = "Success!";
                        LabelEmailWarning.Visible = true;

                       
                        Session["uEmail"] = txtEmail.Text;
                        Response.Redirect("/SignUp2.aspx");

                    }
                    else
                    {
                        LabelEmailWarning.Text = "Not Unique!";
                        LabelEmailWarning.Visible = true;
                    }

                }
                catch
                {

                    LabelEmailWarning.Text = "Error!";
                    LabelEmailWarning.Visible = true;

                }
                finally
                {

                    db.Close();
                }
            }
        }
    }
}