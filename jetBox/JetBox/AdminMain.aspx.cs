using System;
using System.Collections.Generic;
using System.Linq;
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
            GridView1.Visible = false;
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
            Response.Redirect("./AdminInventory.aspx");
        }

        //when the Back button is clicked, the admin will be sent back to the
        //page with sign up and log in options
        protected void BackButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("./SignUp.aspx");
        }
    }
}