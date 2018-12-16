using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class App_Views_report_GradeReport : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void sure_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/App_Views/report/GradeReport2.aspx?课程代号=" + TextBox2.Text + "&学号=" + TextBox1.Text);
       
    }
} 