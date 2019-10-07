using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Student_Result : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        divresult.Visible = false;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string constr = @"Data Source=(localdb)\Projects;Initial Catalog=EXAM_CELL;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False";
        SqlConnection con = new SqlConnection(constr);
        SqlCommand cmd = new SqlCommand("select firstname,lastname,semester,branch from usersT where enrollno='"+ertextbox.Text.ToString()+"'", con);
        con.Open();
        SqlDataReader rdr = cmd.ExecuteReader();
        rdr.Read();
        string semester = rdr[2].ToString();
        string branch = rdr[3].ToString();
        string namee = rdr[0].ToString() + " " + rdr[1].ToString();
        con.Close();
        name.Text = namee;
        erno.Text = ertextbox.Text;
        if(branch.Equals("Computer"))
        {
            if(semester.Equals("1"))
            {
                sub1.Text = "CPU";
                sub2.Text = "ES";
                sub3.Text = "Physics";
                sub4.Text = "Calculus";
            }
            else if(semester.Equals("2"))
            {
                sub1.Text = "C++";
                sub2.Text = "DS";
                sub3.Text = "DBMS";
                sub4.Text = "VCLA";
            }
            else if(semester.Equals("3"))
            {
                sub1.Text = "JAVA";
                sub2.Text = "SP";
                sub3.Text = "ADA";
                sub4.Text = "AEM";
            }
            else
            {
                sub1.Text = "AJT";
                sub2.Text = ".NET";
                sub3.Text = "WT";
                sub4.Text = "MATHS-4";
            }
        }
        if(branch.Equals("Mechanical"))
        {
            if(semester.Equals("1"))
            {
                sub1.Text = "EME";
                sub2.Text = "ES";
                sub3.Text = "Physics";
                sub4.Text = "Calculus";
            }
            else if(semester.Equals("2"))
            {
                sub1.Text = "MOS";
                sub2.Text = "EG";
                sub3.Text = "VCLA";
                sub4.Text = "EEE";
            }
            else if(semester.Equals("3"))
            {
                sub1.Text = "AEM";
                sub2.Text = "EME";
                sub3.Text = "MSM";
                sub4.Text = "FM";
            }
            else
            {
                sub1.Text = "ET";
                sub2.Text = "Management";
                sub3.Text = "MMM";
                sub4.Text = "KOM";
            }
        }
        if(branch.Equals("Electrical"))
        {
         if(semester.Equals("1"))
            {
                sub1.Text = "CHEMISTRY";
                sub2.Text = "EC";
                sub3.Text = "EEE";
                sub4.   Text = "EME";
            }
            else if(semester.Equals("2"))
            {
                sub1.Text = "MOS";
                sub2.Text = "PHYSICS";
                sub3.Text = "EG";
                sub4.Text = "VCLA";
            }
            else if(semester.Equals("3"))
            {
                sub1.Text = "BE";
                sub2.Text = "CN";
                sub3.Text = "EM";
                sub4.Text = "AEM";
            }
            else
            {
                sub1.Text = "MPI";
                sub2.Text = "CT";
                sub3.Text = "EP";
                sub4.Text = "MATHS-4";
            }
        }
        if(branch.Equals("Civil"))
        {
            if (semester.Equals("1"))
            {
                sub1.Text = "CHEMISTRY";
                sub2.Text = "EC";
                sub3.Text = "EEE";
                sub4.Text = "EME";
            }
            else if (semester.Equals("2"))
            {
                sub1.Text = "MOS";
                sub2.Text = "PHYSICS";
                sub3.Text = "EG";
                sub4.Text = "VCLA";
            }
            else if(semester.Equals("3"))
            {
                sub1.Text = "FM";
                sub2.Text = "SA";
                sub3.Text = "CT";
                sub4.Text = "AEM";
            }
            else
            {
                sub1.Text = "BC";
                sub2.Text = "AS";
                sub3.Text = "SA-2";
                sub4.Text = "MATHS-4";
            }
        }
        con.Open();
        SqlCommand cmd2 = new SqlCommand("select * from marksheet where enrollno='" + erno.Text.ToString() + "'",con);
        SqlDataReader rdr2 = cmd2.ExecuteReader();
        rdr2.Read();
        mark1.Text = rdr2[3].ToString();
        mark2.Text = rdr2[4].ToString();
        mark3.Text = rdr2[5].ToString();
        mark4.Text = rdr2[6].ToString();
        total.Text = "TOTAL = "+rdr2[7].ToString();
        per.Text = "PERCENTAGE = " +rdr2[8].ToString()+" %";
        if(double.Parse(rdr2[8].ToString())<35)
        {
            result.ForeColor = System.Drawing.Color.Red;
            result.Text = "SORRY , YOU HAVE NOT CLEARED THE EXAM";
        }
        else
        {
            result.ForeColor = System.Drawing.Color.Green;
            result.Text = "CONGRATULATIONS!! YOU HAVE CLEARED THE EXAM";
        }
        con.Close();
        divresult.Visible = true;
    }
}