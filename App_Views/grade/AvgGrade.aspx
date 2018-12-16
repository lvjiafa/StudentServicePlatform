<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AvgGrade.aspx.cs" Inherits="App_Views_grade_AvgGrade" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>各科目平均成绩</title>
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
                    <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSource2">
                        <EditItemTemplate>
                            课程名称:
                            <asp:TextBox ID="课程名称TextBox" runat="server" Text='<%# Bind("课程名称") %>' />
                            <br />
                            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                                CommandName="Update" Text="更新" />
                            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                                CausesValidation="False" CommandName="Cancel" Text="取消" />
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            课程名称:
                            <asp:TextBox ID="课程名称TextBox" runat="server" Text='<%# Bind("课程名称") %>' />
                            <br />
                            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                                CommandName="Insert" Text="插入" />
                            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                                CausesValidation="False" CommandName="Cancel" Text="取消" />
                        </InsertItemTemplate>
                        <ItemTemplate>
                            课程名称:
                            <asp:Label ID="课程名称Label" runat="server" Text='<%# Bind("课程名称") %>' />
                            <br />

                        </ItemTemplate>
                    </asp:FormView>
                    <asp:FormView ID="FormView2" runat="server" DataSourceID="SqlDataSource3">
                        <EditItemTemplate>
                            平均成绩:
                            <asp:TextBox ID="平均成绩TextBox" runat="server" Text='<%# Bind("平均成绩") %>' />
                            <br />
                            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                                CommandName="Update" Text="更新" />
                            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                                CausesValidation="False" CommandName="Cancel" Text="取消" />
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            平均成绩:
                            <asp:TextBox ID="平均成绩TextBox" runat="server" Text='<%# Bind("平均成绩") %>' />
                            <br />
                            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                                CommandName="Insert" Text="插入" />
                            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                                CausesValidation="False" CommandName="Cancel" Text="取消" />
                        </InsertItemTemplate>
                        <ItemTemplate>
                            平均成绩:
                            <asp:Label ID="平均成绩Label" runat="server" Text='<%# Bind("平均成绩") %>' />
                            <br />

                        </ItemTemplate>
                    </asp:FormView>
                </div>
            </div>
            <div class="center-right">
                <span class="right-header">请先选择课程信息</span>
                <span class="right-nuber">
                    课程名称：
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" AppendDataBoundItems="True"
                    DataSourceID="SqlDataSource1" DataTextField="课程名称" DataValueField="课程名称">
                        <asp:ListItem>-请选择-</asp:ListItem>
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
                    SelectCommand="SELECT DISTINCT [课程名称] FROM [学生成绩 查询]">
                    </asp:SqlDataSource>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
                    SelectCommand="SELECT DISTINCT [课程名称] FROM [学生成绩 查询] WHERE ([课程名称] = ?)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="DropDownList1" Name="课程名称" 
                                PropertyName="SelectedValue" Type="String" />
                        </SelectParameters>
                </asp:SqlDataSource>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
                    SelectCommand="SELECT AVG(成绩) AS 平均成绩 FROM [学生成绩 查询] WHERE (课程名称 = ?)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="DropDownList1" Name="?" 
                                PropertyName="SelectedValue" />
                        </SelectParameters>
                </asp:SqlDataSource>
                </span>
            </div>
        </div>
    </div>
    </form>
</body>
</html>
