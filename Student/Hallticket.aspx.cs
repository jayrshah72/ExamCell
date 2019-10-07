using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Student_Hallticket : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string username = null;
        if (Session["loggedin"].ToString().Equals("yes"))
        {
            username = Session["username"].ToString();
        }
        else
        {
            Response.Redirect("Student_login.aspx");
        }
        if (username != null)
        {
            string constr = @"Data Source=(localdb)\Projects;Initial Catalog=EXAM_CELL;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False";
            SqlConnection con = new SqlConnection(constr);

            con.Open();
            SqlCommand cmd = new SqlCommand("select firstname,lastname,enrollno,branch,semester,image from usersT where username='" + username + "'", con);
            SqlDataReader reader = cmd.ExecuteReader();
            reader.Read();
            string firstname = reader[0].ToString();
            string lastname = reader[1].ToString();
            string enrollno = reader[2].ToString();
            string branch = reader[3].ToString();
            string semester = reader[4].ToString();
            string image = reader[5].ToString();
            con.Close();
            StringBuilder sb = new StringBuilder();

            sb.Append("<html><head><style>th{padding:15px;text-align:center}tr:nth-child(even){background:lightyellow;}tr:nth-child(odd){background:white;}</style></head><body style='position:absolute;left:15%;top:20%'>");
            sb.Append("<script>window.print()</script>");
            sb.Append("<table border='1'><tr><td style='text-align:center' colspan='5'><h1>GUJARAT TECHNOLOGICAL UNIVERSITY</h1></td></tr>");
            sb.Append("<tr><td colspan='5' style='text-align:center'>Hall Ticket<br>");
            sb.Append("BE SEM- " + semester + "</td></tr><tr><td>NAME</td><td colspan='3'>" + firstname + "  " + lastname + "</td><td><img width='90px' height='60px' src='p1.jpg'/></td></tr>");
            sb.Append("<tr><td>Enroll no:</td><td colspan='4'>" + enrollno + "</td></tr>");
            sb.Append("<tr><td>Center:</td><td colspan='4'>ITM UNIVERSE</td></tr>");
           if(branch.Equals("Computer"))
           {
               if(semester.Equals("1"))
               {
                   sb.Append("<tr><td>Subject:</td><td>CPU</td><td>ES</td><td>PHYSICS</td><td>CALCULUS</td></tr>");
               }
               else if(semester.Equals("2"))
               {
                   sb.Append("<tr><td>Subject:</td><td>C++</td><td>DS</td><td>DBMS</td><td>VCLA</td></tr>");
               }
               else if(semester.Equals("3"))
               {
                   sb.Append("<tr><td>Subject:</td><td>JAVA</td><td>SP</td><td>ADA</td><td>AEM</td></tr>");
               }
               else
               {
                   sb.Append("<tr><td>Subject:</td><td>AJT</td><td>.NET</td><td>WT</td><td>MATHS-4</td></tr>");
               }
           }
            
           else if(branch.Equals("Mechanical"))
           {
               if(semester.Equals("1"))
               {
                   sb.Append("<tr><td>Subject:</td><td>EME</td><td>ES</td><td>PHYSICS</td><td>CALCULUS</td></tr>");
               }
               else if (semester.Equals("2"))
               {
                   sb.Append("<tr><td>Subject:</td><td>MOS</td><td>EG</td><td>VCLA</td><td>EEE</td></tr>");
               }
               else if (semester.Equals("3"))
               {
                   sb.Append("<tr><td>Subject:</td><td>EME</td><td>MSM</td><td>FM</td><td>AEM</td></tr>");
               }
               else
               {
                   sb.Append("<tr><td>Subject:</td><td>ET</td><td>Management</td><td>MMM</td><td>KOM</td></tr>");
               }
           }
           else if (branch.Equals("Electrical"))
           {
               if (semester.Equals("1"))
               {
                   sb.Append("<tr><td>Subject:</td><td>Chemistry</td><td>ECE</td><td>EEE</td><td>EME</td></tr>");
               }
               else if (semester.Equals("2"))
               {
                   sb.Append("<tr><td>Subject:</td><td>MOS</td><td>PHYSICS</td><td>EG</td><td>VCLA</td></tr>");
               }
               else if (semester.Equals("3"))
               {
                   sb.Append("<tr><td>Subject:</td><td>BE</td><td>CN</td><td>EM</td><td>AEM</td></tr>");
               }
               else
               {
                   sb.Append("<tr><td>Subject:</td><td>MPI</td><td>CT</td><td>EP</td><td>MATHS-4</td></tr>");
               }
           }
           else if (branch.Equals("Civil"))
           {
               if (semester.Equals("1"))
               {
                   sb.Append("<tr><td>Subject:</td><td>Chemistry</td><td>ECE</td><td>EEE</td><td>EME</td></tr>");
               }
               else if (semester.Equals("2"))
               {
                   sb.Append("<tr><td>Subject:</td><td>MOS</td><td>Physics</td><td>EG</td><td>VCLA</td></tr>");
               }
               else if (semester.Equals("3"))
               {
                   sb.Append("<tr><td>Subject:</td><td>FM</td><td>SA</td><td>CT</td><td>AEM</td></tr>");
               }
               else
               {
                   sb.Append("<tr><td>Subject:</td><td>BC</td><td>AS</td><td>SA-2</td><td>Maths-4</td></tr>");
               }
           }
           sb.Append("<tr><td>Date</td><td>22-4-2017</td><td>23-4-2017</td><td>24-4-2017</td><td>25-4-2017</td></tr>");
           sb.Append("<tr><td>Time</td><td>10:00-12:30</td><td>10:00-12:30</td><td>10:00-12:30</td><td>10:00-12:30</td></tr>");
           sb.Append("<tr><td>Sign</td><td></td><td></td><td></td><td></td>");
            Response.Write(sb.ToString());
        }
    }
}