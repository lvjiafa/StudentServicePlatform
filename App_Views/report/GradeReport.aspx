﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="GradeReport.aspx.cs" Inherits="App_Views_report_GradeReport" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=10.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>课程成绩报表</title>
    <link href="../../App_Themes/css/IndexStyle.css" rel="Stylesheet" type="text/css" />
    <link href="../../App_Themes/css/Report.css" rel="Stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="header">
        <div class="header-top">
            <div class="all-center">
                <div class="header-top-left">
                    <span>
                        <a href="">设为首页</a>
                    </span>
                    <span>
                        <a href="">收藏本页</a>
                    </span>
                </div>
                <div class="header-top-right">
                    <label></label>
                    <label></label>
                </div>
            </div>
        </div>
        <div class="header-cneter">
            <div class="mian-pitrue">
                <div class="all-center">
                    <h1>
                        <a href="../IndexPage.htm"></a>
                        <img src="../../App_Themes/images/index/Index_Asp.jpg" width="960px" height="120px" alt="Web程序设计"/>
                    </h1>
                </div>
            </div>
        </div>
        <div class="header-daohang">
            <div class="all-center">
            <ul>
                <li class="a">
                    <span><a href="../IndexPage.htm">网站首页</a></span> 
                </li>
                <li>
                    <a href="https://baike.baidu.com/item/Web%20%E7%A8%8B%E5%BA%8F%E8%AE%BE%E8%AE%A1" target="_blank">课程简介</a>
                </li>
                <li> 
                    <a href="" target="_blank">课程背景</a>
                </li>
                <li>
                    <a href="http://eol.wyu.edu.cn/eol/homepage/common/" target="_blank">教学平台</a>
                </li>
                <li>
                    <a href="" target="_blank">课程要求</a>
                </li>
                <li>
                    <a href="" target="_blank">相关资料</a>
                </li>
            </ul>
        </div>
        </div>
    </div>
    <center>
            <div class="gr_h">
                <asp:ScriptManager ID="ScriptManager1" runat="server" />
                <rsweb:ReportViewer ID="ReportViewer1" runat="server" Font-Names="Verdana" 
                    Font-Size="8pt" InteractiveDeviceInfos="(集合)" WaitMessageFont-Names="Verdana" 
                    WaitMessageFont-Size="14pt" Width="695px">
                    <LocalReport ReportPath="rdlc\课程成绩单.rdlc">
                        <DataSources>
                            <rsweb:ReportDataSource DataSourceId="AccessDataSource1" Name="DataSet1" />
                        </DataSources>
                    </LocalReport>
                </rsweb:ReportViewer>
                <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
                    DataFile="~/App_Data/应用系统开发实例 教学管理系统.mdb" 
                    SelectCommand="SELECT [学号], [姓名], [课程代号], [课程名称], [成绩] FROM [学生成绩 查询]">
                </asp:AccessDataSource>
                <br />
            </div>
            <span>
            <asp:ImageButton ID="back" runat="server" PostBackUrl="~/App_Views/report/ReportPage.aspx"
                ImageUrl="~/App_Themes/images/report/ReportPage3_03.jpg" Height="30px" />
            </span>
            <br />
            <br />
            <br />
        </center>
    <div class="footer">
        <div class="all-center">
            <span>
            </span>
            <span>
            </span>
        </div>
    </div>
    </form>
</body>
</html>
