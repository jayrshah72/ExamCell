using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Student_generateMarksheet : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

    }
    protected void authenticatest_Click(object sender, EventArgs e)
    {
        Response.Redirect("authenticateStudent.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {

        string constr = @"Data Source=(localdb)\Projects;Initial Catalog=EXAM_CELL;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False";
        SqlConnection con = new SqlConnection(constr);
        SqlCommand cmd = new SqlCommand("select firstname,lastname,enrollno from usersT", con);
        SqlDataAdapter da = new SqlDataAdapter();
        DataSet ds = new DataSet();
        da.SelectCommand = cmd;
        da.Fill(ds);
        string fname=null,lname=null,erno=null;
        int sub1=0, sub2=0, sub3=0, sub4=0, total=0;
        double per=0;
        for(int i=0;i<ds.Tables[0].Rows.Count;i++)
        {
            
                fname=ds.Tables[0].Rows[i][0].ToString();
                lname = ds.Tables[0].Rows[i][1].ToString();
               erno = ds.Tables[0].Rows[i][2].ToString();
               TextBox tb1 =(TextBox)GridView1.Rows[i].Cells[3].FindControl("sub1");
               TextBox tb2= (TextBox)GridView1.Rows[i].Cells[4].FindControl("sub2");
               TextBox tb3 = (TextBox)GridView1.Rows[i].Cells[5].FindControl("sub3");
               TextBox tb4 = (TextBox)GridView1.Rows[i].Cells[6].FindControl("sub4");
               sub1 = int.Parse(tb1.Text.ToString());
               sub2 = int.Parse(tb2.Text.ToString());
               sub3 = int.Parse(tb3.Text.ToString());
               sub4 = int.Parse(tb4.Text.ToString());
                 total=sub1+sub2+sub3+sub4;
            per=(double)total/4;

            con.Open();
            SqlCommand cmd1 = new SqlCommand("insert into marksheet values(@firstname,@lastname,@enrollno,@sub1,@sub2,@sub3,@sub4,@total,@per)",con);
                cmd1.Parameters.AddWithValue("@firstname",fname);
            cmd1.Parameters.AddWithValue("@lastname",lname);
            cmd1.Parameters.AddWithValue("@enrollno",erno);
            cmd1.Parameters.AddWithValue("@sub1",sub1);
            cmd1.Parameters.AddWithValue("@sub2",sub2);
            cmd1.Parameters.AddWithValue("@sub3",sub3);
            cmd1.Parameters.AddWithValue("@sub4",sub4);


            cmd1.Parameters.AddWithValue("@total",total);
            cmd1.Parameters.AddWithValue("@per",per);
            GridView1.Visible = false;
            cmd1.ExecuteNonQuery();
            con.Close();
            Button2.Visible = false;
        }
        
    }
}