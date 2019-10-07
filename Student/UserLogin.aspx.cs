using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Student_UserLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = Session["username"].ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["loggedin"] = "no";
        Session.Abandon();
        Response.Redirect("Home.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Hallticket.aspx");
    }
}