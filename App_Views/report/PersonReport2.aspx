<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PersonReport2.aspx.cs" Inherits="App_Views_report_PersonReport2"  EnableEventValidation = "false" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>个人成绩报表</title>
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
        <div class="p_h">
            <div class="all-center">
                <span class="bt_q">
                    <asp:ImageButton ID="bt_q" ImageUrl="~/App_Themes/images/report/ReportPage3_03.jpg"
                            PostBackUrl="~/App_Views/report/ReportPage.aspx" runat="server" Height="30px" Width="80px"/>
                </span>
                 <span class="bt_f">
                    <asp:ImageButton ID="bt_f" ImageUrl="~/App_Themes/images/report/ReportPage3_05.jpg"
                             runat="server" Height="30px" Width="80px" 
                    onclick="bt_f_Click1"/>
                </span>
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:BoundField DataField="学号" HeaderText="学号" 
                            SortExpression="学号" />
                        <asp:BoundField DataField="姓名" HeaderText="姓名" SortExpression="姓名" />
                        <asp:BoundField DataField="课程代号" HeaderText="课程代号" SortExpression="课程代号" />
                        <asp:BoundField DataField="课程名称" HeaderText="课程名称" SortExpression="课程名称" />
                        <asp:BoundField DataField="成绩" HeaderText="成绩" SortExpression="成绩" />
                    </Columns>
                </asp:GridView>
                <br />
                <br />
                <br />
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
                    SelectCommand="SELECT * FROM [学生成绩 查询] WHERE (([姓名] = ?) AND ([学号] = ?))">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="姓名" QueryStringField="姓名" Type="String" />
                        <asp:QueryStringParameter Name="学号" QueryStringField="学号" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
            </div>
        </div>
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
