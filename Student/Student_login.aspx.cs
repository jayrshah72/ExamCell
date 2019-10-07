using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Student_Student_login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Session["loggedin"]!=null)
        if (Session["loggedin"].ToString().Equals("yes"))
        {
            Response.Redirect("UserLogin.aspx");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
        string constr = @"Data Source=(localdb)\Projects;Initial Catalog=EXAM_CELL;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False";
        SqlConnection con = new SqlConnection(constr);
        SqlCommand cmd = new SqlCommand("select * from usersT where username='" + usernamelogin.Text.ToString() + "' and password='" + passwordlogin.Text.ToString() + "'", con);
        con.Open();

        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read() == false)
        {
            labellogin.Text = "UserName or Password is invalid";
            usernamelogin.Focus();
            return;
        }
        else
        {
            Session["loggedin"] = "yes";
            Session["username"] = usernamelogin.Text.ToString();
            Response.Redirect("UserLogin.aspx");
        }
        dr.Close();
        con.Close();
       
    }


   
}