using System;
using System.Collections.Generic;
using System.Linq;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JetBox
{
    public partial class WebForm9 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Visible = false;
            usernameLbl.Visible = false;

            //SqlConnection db = new SqlConnection(SqlDataSource1.ConnectionString);
            //SqlCommand cmd = new SqlCommand();
            //cmd.CommandType = System.Data.CommandType.Text;
            //cmd.CommandText = "INSERT INTO [Admin] (Admin_Password, Admin_FName, Admin_LName, Admin_Email) VALUES ('admin123!', 'Adminf', 'Adminl', 'admin@admin.com')";
            //cmd.Connection = db;
            //db.Open();
            ////Label2.Text = cmd.CommandText;
            //try
            //{
            //    cmd.ExecuteNonQuery();
            //}
            //catch (Exception ex)
            //{
            //    Label1.Text = "An error occured writing into database!";
            //    Label1.Text = ex.ToString();
            //    Label1.Visible = true;
            //}
            //finally { db.Close(); }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            /*SqlConnection db = new SqlConnection(SqlDataSource1.ConnectionString);
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = System.Data.CommandType.Text;
            cmd.CommandText = "INSERT [Admin] (Admin_Username, Admin_Password, Admin_Email, Admin_FName, Admin_LName, Admin_Country) VALUES ('admin001', 'Admin*3351', 'admin@admin.com', 'AdminFName', 'AdminLName', 'USA')";
            cmd.Connection = db;

            db.Open();

            try
            {
                cmd.ExecuteNonQuery();
                Label1.Text = "Success writing into database!";
                Label1.Visible = true;
            }
            catch (Exception ex)
            {
                Label1.Text = "An error occured writing into database!";
                Label1.Text = ex.ToString();
                Label1.Visible = true;
            }
            finally
            {
                db.Close();
            }*/

            /*string username = boxUsername.Text;
            string password = boxPassword.Text;

            if(username == "admin001" && password=="Admin*3351")
            {
                Response.Redirect("./adminHome.aspx");
            }
            else
            {
                Label1.Text = "Username and password do not match. Try again.";
                Label1.Visible = true;
                return;
            }*/

            SqlConnection db = new SqlConnection(SqlDataSource1.ConnectionString);
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = System.Data.CommandType.Text;
            cmd.CommandText = "SELECT Admin_Password FROM [Admin] WHERE ([Admin_Email] = '" + boxUsername.Text + "')";
            cmd.Connection = db;
            db.Open();

            string username = boxUsername.Text;
            string password = boxPassword.Text;

            SqlDataReader reader = cmd.ExecuteReader();
            if (reader.HasRows)
            {
                while (reader.Read())
                {
                    string user_password = reader.GetString(0);
                    if (user_password == password)
                    {
                        Response.Redirect("./AdminMain.aspx");
                    }
                    else
                    {
                        Label1.Text = "Username and password do not match. Try again.";
                        Label1.Visible = true;
                        return;
                    }
                }
            }
            else
            {
                Label1.Text = "Username and password do not match. Try again.";
                Label1.Visible = true;
                return;
            }

            reader.Close();
            db.Close();
        }
    }
}