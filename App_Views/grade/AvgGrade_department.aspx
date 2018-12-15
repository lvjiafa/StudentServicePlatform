<%@ Page Language="VB" AutoEventWireup="false" CodeFile="AvgGrade_department.aspx.vb" Inherits="App_Views_grade_AvgGrade" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>各系按科目平均成绩</title>
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
            <div class="center-left">
                <div class="student-info">
                    <br />
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                        AutoGenerateColumns="False" DataSourceID="SqlDataSource2">
                        <Columns>
                            <asp:BoundField DataField="课程名称" HeaderText="课程名称" SortExpression="课程名称" />
                            <asp:BoundField DataField="平均成绩" HeaderText="平均成绩" ReadOnly="True" 
                                SortExpression="平均成绩" />
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
            <div class="center-right">
                <span class="right-header">
                    请先选择院系信息
                </span>
                <span class="right-nuber">
                    院系名称：
                    <asp:DropDownList ID="DropDownList1" runat="server" 
                    DataSourceID="SqlDataSource1" DataTextField="院系名称" DataValueField="院系名称" 
                    AutoPostBack="True">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
                    SelectCommand="SELECT DISTINCT [院系名称] FROM [各院系按课程的平均成绩查询]"></asp:SqlDataSource>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
                    SelectCommand="SELECT [课程名称], [平均成绩] FROM [各院系按课程的平均成绩查询] WHERE ([院系名称] = ?)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="DropDownList1" Name="院系名称" 
                                PropertyName="SelectedValue" Type="String" />
                        </SelectParameters>
                </asp:SqlDataSource>
                </span>  

            </div>
        </div>
    </div>
    </form>
</body>
</html>
