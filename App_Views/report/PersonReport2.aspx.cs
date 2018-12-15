using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class App_Views_report_PersonReport2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    
        
    protected void bt_f_Click1(object sender, ImageClickEventArgs e)
    {
        Response.Clear();
        Response.BufferOutput = true;
        //设定输出的字符集
        Response.Charset = "GB2312";
        //假定导出的文件名为FileName.doc
        Response.AppendHeader("Content-Disposition", "attachment;filename=FileName.doc");
        Response.ContentEncoding = System.Text.Encoding.GetEncoding("GB2312");
        ////设置导出文件的格式
        Response.ContentType = "application/ms-word";
        //关闭ViewState
        GridView1.EnableViewState = false;
        System.Globalization.CultureInfo cultureInfo = new System.Globalization.CultureInfo("ZH-CN", true);
        System.IO.StringWriter stringWriter = new System.IO.StringWriter(cultureInfo);
        System.Web.UI.HtmlTextWriter textWriter = new System.Web.UI.HtmlTextWriter(stringWriter);
        GridView1.RenderControl(textWriter);
        ////把HTML写回浏览器
        Response.Write(stringWriter.ToString());
        Response.End();
    }
    public override void VerifyRenderingInServerForm(Control control)
    {
        //base.VerifyRenderingInServerForm(control);
    }
}