using System;
using System.Collections.Generic;
using System.Linq;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

//TO DO TO ADMINMAIN PAGE
//Link database
//Create and modify gridview
//VIEW ADMINS???

namespace JetBox
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //GridView1.Visible = false;

            //SqlConnection db = new SqlConnection(SqlDataSource2.ConnectionString);
            //SqlCommand cmd = new SqlCommand();
            //cmd.CommandType = System.Data.CommandType.Text;
            //cmd.CommandText = "INSERT INTO [User] (User_FName, User_LName, User_Address, User_City, User_State, User_Zip, User_Email, User_Password, User_PaymentInfo) VALUES ('Userf', 'Userl', '123 User Dr.', 'User City', 'User State', '12345', 'user@user.com', 'user123!', 'yes')";
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

        //when View Users button is clicked, the GridView of user database
        //will be set to visible so that the admin can edit, delete, and add users
        protected void UserButton_Click(object sender, EventArgs e)
        {
            GridView1.Visible = true;
        }

        //when View Inventory button is clicked, the admin is redirected
        //to the inventory page where he or she will be able to edit, delete, and 
        //add movies
        protected void InventoryButton_Click(object sender, EventArgs e)
        {
            //SqlConnection db = new SqlConnection(SqlDataSource2.ConnectionString);
            //SqlCommand cmd = new SqlCommand();
            //cmd.CommandType = System.Data.CommandType.Text;
            //cmd.CommandText = "INSERT INTO [Movie] (Movie_Title, Movie_Genre, Movie_Rating, Movie_Description, Movie_UserRating, Movie_Quantity) VALUES ('Big Daddy', 'Comedy', 'PG-13', 'A lazy law school grad adopts a kid to impress his girlfriend, but everything does not go as planned and he becomes the unlikely foster father.', '5', '15')";
            //cmd.Connection = db;
            //db.Open();
            //Label2.Text = cmd.CommandText;
            //try
            //{
            //    cmd.ExecuteNonQuery();
                Response.Redirect("./AdminInventory.aspx");
            //}
            //catch (Exception ex)
            //{
            //    Label1.Text = "An error occured writing into database!";
            //    Label1.Text = ex.ToString();
            //    Label1.Visible = true;
            //}
            //finally { db.Close(); }
           
        }

        //when the Back button is clicked, the admin will be sent back to the
        //page with sign up and log in options
        protected void BackButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("./SignUp.aspx");
        }
    }
}