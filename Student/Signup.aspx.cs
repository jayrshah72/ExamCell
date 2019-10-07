using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Student_Signup : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string constr = @"Data Source=(localdb)\Projects;Initial Catalog=EXAM_CELL;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False";
        SqlConnection con = new SqlConnection(constr);
        SqlCommand cmd = new SqlCommand("insert into signupT(firstname,lastname,emailid,enrollno,branch,semester,gender,username,password,image,mobileno) values (@firstname,@lastname,@emailid,@enrollno,@branch,@semester,@gender,@username,@password,@image,@mobileno)", con);
        cmd.Parameters.AddWithValue("@firstname", fnametxt.Text.ToString());
        cmd.Parameters.AddWithValue("@lastname", lnametxt.Text.ToString());
        cmd.Parameters.AddWithValue("@emailid", emailtxt.Text.ToString());
        cmd.Parameters.AddWithValue("@enrollno", ernotxt.Text.ToString());
        cmd.Parameters.AddWithValue("@branch", branchdropdown.SelectedValue.ToString());
        cmd.Parameters.AddWithValue("@semester", semesterdropdown.SelectedValue.ToString());
        cmd.Parameters.AddWithValue("@gender", gendersignup.SelectedValue.ToString());
        cmd.Parameters.AddWithValue("@username", usernametxt.Text.ToString());
        cmd.Parameters.AddWithValue("@password", pswdtxt.Text.ToString());
        cmd.Parameters.AddWithValue("@image", Server.MapPath(userimage.FileName.ToString()));
        cmd.Parameters.AddWithValue("@mobileno", mobileno.Text.ToString());
        con.Open();
        SqlCommand check = new SqlCommand("select * from signupT where username='" + usernametxt.Text.ToString() + "' or enrollno='" + ernotxt.Text.ToString() + "'", con);
        SqlDataReader dr = check.ExecuteReader();
        if (dr.Read() != false)
        {
            labelstatus.Text = "Username or Enrollment number is already register";

            return;
        }

        dr.Close();
        check = new SqlCommand("select * from usersT where username='" + usernametxt.Text.ToString() + "' or enrollno='" + ernotxt.Text.ToString() + "'", con);
        dr = check.ExecuteReader();
        if (dr.Read() != false)
        {
            labelstatus.Text = "Username or Enrollment number is already register";

            return;
        }
        int rowsaffected = cmd.ExecuteNonQuery();
        if (rowsaffected == 1)
        {
            labelstatus.Text = "Congrats!! You are registered Succesdfully, Check your mail for further details";
        }
        con.Close();
        Response.Redirect("Student_login.aspx");
        
    }
   
}