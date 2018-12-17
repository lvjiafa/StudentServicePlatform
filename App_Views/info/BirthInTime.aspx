<%@ Page Language="C#" AutoEventWireup="true" CodeFile="BirthInTime.aspx.cs" Inherits="App_Views_info_BirthInTime" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>某期间出生人数</title>
    <link href="../../App_Themes/css/IndexStyle.css" rel="Stylesheet" type="text/css" />
    <link href="../../App_Themes/css/Student.css" rel="Stylesheet" type="text/css" />
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
    <div class="center">
        <div class="all-center">
            <center>
                <br /><br />
                请选择出生时间段：<br /><br /><br />
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="true" AppendDataBoundItems="true"
                    DataSourceID="SqlDataSource1" DataTextField="出生日期" DataValueField="出生日期">
                </asp:DropDownList>
                &nbsp;&nbsp;&nbsp; 至 &nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="true" AppendDataBoundItems="true"
                    DataSourceID="SqlDataSource2" DataTextField="出生日期" DataValueField="出生日期">
                </asp:DropDownList>
                <br /><br /><br />
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataKeyNames="学号" DataSourceID="SqlDataSource3">
                    <Columns>
                        <asp:BoundField DataField="学号" HeaderText="学号" ReadOnly="True" 
                            SortExpression="学号" />
                        <asp:BoundField DataField="姓名" HeaderText="姓名" SortExpression="姓名" />
                        <asp:BoundField DataField="性别" HeaderText="性别" SortExpression="性别" />
                        <asp:BoundField DataField="出生日期" HeaderText="出生日期" SortExpression="出生日期" />
                    </Columns>
                </asp:GridView>
                <br /><br /><br />
                <span>
                <asp:ImageButton ID="back" runat="server" PostBackUrl="~/App_Views/info/InfoPage.aspx"
                    ImageUrl="~/App_Themes/images/report/ReportPage2_03.jpg" Height="30px" />
                </span>
            </center>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
                SelectCommand="SELECT [出生日期] FROM [学生情况 查询] ORDER BY [出生日期]">
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
                SelectCommand="SELECT [出生日期] FROM [学生情况 查询] ORDER BY [出生日期]">
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
                
                SelectCommand="SELECT [学号], [姓名], [性别], [出生日期] FROM [学生情况 查询] WHERE (([出生日期] &gt;= ?) AND ([出生日期] &lt;= ?))">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" Name="出生日期" 
                        PropertyName="SelectedValue" Type="DateTime" />
                    <asp:ControlParameter ControlID="DropDownList2" Name="出生日期2" 
                        PropertyName="SelectedValue" Type="DateTime" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
    </div>
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



