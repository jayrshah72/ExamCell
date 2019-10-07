using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Adminlogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        

    }
    protected void passbtn_Click(object sender, EventArgs e)
    {
       if(admintext.Text.ToString().Equals("admin")&&adminpass.Text.ToString().Equals("admin1234"))
       {
           Response.Redirect("Admin2paget.aspx");
       }
       else
       {
           Label1.Text = "Username Or Password is incorrect";
       }
    }
}