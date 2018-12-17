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
            <div class="center-left">
                <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource3">
                </asp:GridView>
            </div>
            <div class="center-right">
                <span class="right-nuber">
                    <asp:DropDownList ID="DropDownList1" runat="server" 
                    AppendDataBoundItems="True">
                        <asp:ListItem>-请选择-</asp:ListItem>
                        <asp:ListItem>1987/01/01</asp:ListItem>
                    </asp:DropDownList>
                    <asp:Label ID="Label1" runat="server" Text=" 至 " Font-Size="Small"></asp:Label>
                    <asp:DropDownList ID="DropDownList2" runat="server" AppendDataBoundItems="True" >
                        <asp:ListItem>-请选择-</asp:ListItem>
                        <asp:ListItem>1989/01/01</asp:ListItem>
                    </asp:DropDownList>
                </span>
                <span class="right-button">
                    <asp:ImageButton ID="Tijao" runat="server" ImageUrl="~/App_Themes/images/student/Student_Tijiao.jpg" />
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
                    SelectCommand="SELECT DISTINCT [出生日期] FROM [学生情况]"></asp:SqlDataSource>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
                        SelectCommand="SELECT DISTINCT [出生日期] FROM [学生情况]"></asp:SqlDataSource>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
                    
                    SelectCommand="SELECT 学号, 姓名, 性别, 出生日期, 生源地 FROM 学生情况 WHERE (出生日期 BETWEEN ? AND ?) ORDER BY 出生日期">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="DropDownList1" Name="?" 
                                PropertyName="SelectedValue" />
                            <asp:ControlParameter ControlID="DropDownList2" Name="?" 
                                PropertyName="SelectedValue" />
                        </SelectParameters>
                </asp:SqlDataSource>
                </span>
            </div>
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



