<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TeacherData.aspx.cs" Inherits="App_Views_TeacherData" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../../App_Themes/css/IndexStyle.css" rel="Stylesheet" type="text/css" />
    <link href="../../App_Themes/css/Data.css" rel="Stylesheet" type="text/css" />
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
    <div class="all-center">
        <div class="t-center">
        <center>
        <br />
        <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                DeleteCommand="DELETE FROM 教师情况 WHERE (教师编号 = ?)" 
                InsertCommand="INSERT INTO [教师情况] ([教师编号], [姓名], [性别], [职称], [院系代号]) VALUES (?, ?, ?, ?, ?)" 
                ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
                SelectCommand="SELECT * FROM 教师情况" 
                UpdateCommand="UPDATE [教师情况] SET [姓名] = ?, [性别] = ?, [职称] = ?, [院系代号] = ? WHERE (([教师编号] = ?) OR ([教师编号] IS NULL AND ? IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="教师编号" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="教师编号" Type="String" />
                    <asp:Parameter Name="姓名" Type="String" />
                    <asp:Parameter Name="性别" Type="String" />
                    <asp:Parameter Name="职称" Type="String" />
                    <asp:Parameter Name="院系代号" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="姓名" Type="String" />
                    <asp:Parameter Name="性别" Type="String" />
                    <asp:Parameter Name="职称" Type="String" />
                    <asp:Parameter Name="院系代号" Type="String" />
                    <asp:Parameter Name="教师编号" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
                DataKeyNames="教师编号" DataSourceID="SqlDataSource1" ForeColor="#333333" 
                GridLines="None" Width="548px" Font-Size="Large" Height="371px">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="教师编号" HeaderText="教师编号" ReadOnly="True" 
                        SortExpression="教师编号" />
                    <asp:BoundField DataField="姓名" HeaderText="姓名" SortExpression="姓名" />
                    <asp:BoundField DataField="性别" HeaderText="性别" SortExpression="性别" />
                    <asp:BoundField DataField="职称" HeaderText="职称" SortExpression="职称" />
                    <asp:BoundField DataField="院系代号" HeaderText="院系代号" SortExpression="院系代号" />
                </Columns>
                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                <SortedAscendingCellStyle BackColor="#FDF5AC" />
                <SortedAscendingHeaderStyle BackColor="#4D0000" />
                <SortedDescendingCellStyle BackColor="#FCF6C0" />
                <SortedDescendingHeaderStyle BackColor="#820000" />
            </asp:GridView>
            <br />
        </center>
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
