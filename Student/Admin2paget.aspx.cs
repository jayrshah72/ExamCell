using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Admin2paget : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void authenticatest_Click(object sender, EventArgs e)
    {
        Response.Redirect("authenticateStudent.aspx");
    }
    protected void marksheet_Click(object sender, EventArgs e)
    {
        Response.Redirect("generateMarksheet.aspx");
    }
}