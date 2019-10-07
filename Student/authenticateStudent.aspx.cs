using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class authenticateStudent : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void authenticatest_Click(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string constr = @"Data Source=(localdb)\Projects;Initial Catalog=EXAM_CELL;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False";
        SqlConnection con = new SqlConnection(constr);
        SqlCommand cmd = new SqlCommand("select * from signupT", con);
        con.Open();
        SqlDataAdapter adp = new SqlDataAdapter();
        adp.SelectCommand = cmd;
        DataSet ds = new DataSet();
        adp.Fill(ds);
        con.Close();
        for (int i = 0; i < GridView1.Rows.Count;i++ )
        {
            CheckBox chck = (CheckBox)GridView1.Rows[i].Cells[9].FindControl("allowed");
            if (chck != null && chck.Checked)
            {

            }
            else
            {
                ds.Tables[0].Rows[i].Delete();
            }
        }
        con.Open();
        SqlCommandBuilder cmdbuilder=new SqlCommandBuilder(adp);
        adp=cmdbuilder.DataAdapter;
        adp.Update(ds);
        
        cmd = new SqlCommand("select * from signupT", con);
        
         adp = new SqlDataAdapter();
        adp.SelectCommand = cmd;
         ds = new DataSet();
        adp.Fill(ds);
        con.Close();
        string fname = null, lname = null, email = null, erno = null, branch = null, sem = null, gender = null, username = null, pass = null, image = null, mobno = null;
        SqlCommand cmd2 = null;
        foreach (DataRow rows in ds.Tables[0].Rows)
        {
            fname = rows[0].ToString();
            lname = rows[1].ToString();
            email = rows[2].ToString();
            erno = rows[3].ToString();
            branch = rows[4].ToString();
            sem = rows[5].ToString();
            gender = rows[6].ToString();
            username = rows[7].ToString();
            pass = rows[8].ToString();
            image = rows[9].ToString();
            mobno = rows[10].ToString(); con.Open();
            cmd2 = new SqlCommand("insert into usersT values('" + fname + "','" + lname + "','" + email + "','" + erno + "','" + branch + "','" + sem + "','" + gender + "','" + username + "','" + pass + "','" + image + "','" + mobno + "')", con);

            cmd2.ExecuteNonQuery();
            rows.Delete();
            con.Close();

            

        }
        con.Open();
     cmdbuilder = new SqlCommandBuilder(adp);
        adp = cmdbuilder.DataAdapter;
        adp.Update(ds);
        con.Close();
        GridView1.Visible = false;
        Button1.Visible = false;
        
    }



    protected void marksheet_Click(object sender, EventArgs e)
    {
        Response.Redirect("generateMarksheet.aspx");
    }
}