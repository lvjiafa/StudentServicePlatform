<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TeacherPage.aspx.cs" Inherits="App_Views_Teacher" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>教师资讯</title>
    <link href="../../App_Themes/css/IndexStyle.css" rel="Stylesheet" type="text/css" />
    <link href="../../App_Themes/css/Teacher.css" type="text/css" rel="Stylesheet" />
</head>
<body>
<form runat="server">
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
            <div class="teacher-info">
                <br />
                <br />
                <asp:FormView ID="FormView1" runat="server" DataKeyNames="教师编号" 
                    DataSourceID="SqlDataSource1">
                    <EditItemTemplate>
                        教师编号:
                        <asp:Label ID="教师编号Label1" runat="server" Text='<%# Eval("教师编号") %>' />
                        <br />
                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                            CommandName="Update" Text="更新" />
                        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                            CausesValidation="False" CommandName="Cancel" Text="取消" />
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        教师编号:
                        <asp:TextBox ID="教师编号TextBox" runat="server" Text='<%# Bind("教师编号") %>' />
                        <br />
                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                            CommandName="Insert" Text="插入" />
                        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                            CausesValidation="False" CommandName="Cancel" Text="取消" />
                    </InsertItemTemplate>
                    <ItemTemplate>
                        教师编号:
                        <asp:Label ID="教师编号Label" runat="server" Text='<%# Eval("教师编号") %>' />
                        <br />

                    </ItemTemplate>
                </asp:FormView>
                <br />
&nbsp;<asp:FormView ID="FormView2" runat="server" DataSourceID="SqlDataSource2">
                    <EditItemTemplate>
                        姓名:
                        <asp:TextBox ID="姓名TextBox" runat="server" Text='<%# Bind("姓名") %>' />
                        <br />
                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                            CommandName="Update" Text="更新" />
                        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                            CausesValidation="False" CommandName="Cancel" Text="取消" />
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        姓名:
                        <asp:TextBox ID="姓名TextBox" runat="server" Text='<%# Bind("姓名") %>' />
                        <br />
                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                            CommandName="Insert" Text="插入" />
                        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                            CausesValidation="False" CommandName="Cancel" Text="取消" />
                    </InsertItemTemplate>
                    <ItemTemplate>
                        姓名:
                        <asp:Label ID="姓名Label" runat="server" Text='<%# Bind("姓名") %>' />
                        <br />

                    </ItemTemplate>
                </asp:FormView>
                <br />
&nbsp;<asp:FormView ID="FormView3" runat="server" DataSourceID="SqlDataSource3">
                    <EditItemTemplate>
                        性别:
                        <asp:TextBox ID="性别TextBox" runat="server" Text='<%# Bind("性别") %>' />
                        <br />
                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                            CommandName="Update" Text="更新" />
                        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                            CausesValidation="False" CommandName="Cancel" Text="取消" />
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        性别:
                        <asp:TextBox ID="性别TextBox" runat="server" Text='<%# Bind("性别") %>' />
                        <br />
                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                            CommandName="Insert" Text="插入" />
                        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                            CausesValidation="False" CommandName="Cancel" Text="取消" />
                    </InsertItemTemplate>
                    <ItemTemplate>
                        性别:
                        <asp:Label ID="性别Label" runat="server" Text='<%# Bind("性别") %>' />
                        <br />

                    </ItemTemplate>
                </asp:FormView>
                <br />
&nbsp;<asp:FormView ID="FormView4" runat="server" DataSourceID="SqlDataSource4">
                    <EditItemTemplate>
                        职称:
                        <asp:TextBox ID="职称TextBox" runat="server" Text='<%# Bind("职称") %>' />
                        <br />
                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                            CommandName="Update" Text="更新" />
                        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                            CausesValidation="False" CommandName="Cancel" Text="取消" />
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        职称:
                        <asp:TextBox ID="职称TextBox" runat="server" Text='<%# Bind("职称") %>' />
                        <br />
                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                            CommandName="Insert" Text="插入" />
                        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                            CausesValidation="False" CommandName="Cancel" Text="取消" />
                    </InsertItemTemplate>
                    <ItemTemplate>
                        职称:
                        <asp:Label ID="职称Label" runat="server" Text='<%# Bind("职称") %>' />
                        <br />

                    </ItemTemplate>
                </asp:FormView>
                <br />
&nbsp;<asp:FormView ID="FormView5" runat="server" DataSourceID="SqlDataSource5">
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
                <br />
&nbsp;<asp:FormView ID="FormView6" runat="server" DataSourceID="SqlDataSource6">
                    <EditItemTemplate>
                        任课时间:
                        <asp:TextBox ID="任课时间TextBox" runat="server" Text='<%# Bind("任课时间") %>' />
                        <br />
                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                            CommandName="Update" Text="更新" />
                        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                            CausesValidation="False" CommandName="Cancel" Text="取消" />
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        任课时间:
                        <asp:TextBox ID="任课时间TextBox" runat="server" Text='<%# Bind("任课时间") %>' />
                        <br />
                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                            CommandName="Insert" Text="插入" />
                        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                            CausesValidation="False" CommandName="Cancel" Text="取消" />
                    </InsertItemTemplate>
                    <ItemTemplate>
                        任课时间:
                        <asp:Label ID="任课时间Label" runat="server" Text='<%# Bind("任课时间") %>' />
                        <br />

                    </ItemTemplate>
                </asp:FormView>
                <br />
                <br />
&nbsp;&nbsp;&nbsp;
                <br />
                <br />
&nbsp;&nbsp;&nbsp;
            </div>
            </div>
            <div class="center-right">
                <span class="right-header">请先输入个人信息</span>
                <span class="right-nuber">你的编号：<asp:TextBox ID="TextBox1" runat="server" Height="30px"></asp:TextBox>
                </span>
                <span class="right-name">你的名字：<asp:TextBox ID="TextBox2" runat="server" Height="30px"></asp:TextBox>
                </span>
                <span class="right-button"><asp:ImageButton ID="Tijao" runat="server" ImageUrl="~/App_Themes/images/student/Student_Tijiao.jpg" />
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
                    
                    SelectCommand="SELECT [教师编号] FROM [教师任课情况查询] WHERE (([教师编号] = ?) AND ([姓名] = ?))">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="TextBox1" Name="教师编号" PropertyName="Text" 
                            Type="String" />
                        <asp:ControlParameter ControlID="TextBox2" Name="姓名" PropertyName="Text" 
                            Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
                    
                    SelectCommand="SELECT [姓名] FROM [教师任课情况查询] WHERE (([教师编号] = ?) AND ([姓名] = ?))">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="TextBox1" Name="教师编号" PropertyName="Text" 
                            Type="String" />
                        <asp:ControlParameter ControlID="TextBox2" Name="姓名" PropertyName="Text" 
                            Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
                    
                    SelectCommand="SELECT [性别] FROM [教师任课情况查询] WHERE (([教师编号] = ?) AND ([姓名] = ?))">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="TextBox1" Name="教师编号" PropertyName="Text" 
                            Type="String" />
                        <asp:ControlParameter ControlID="TextBox2" Name="姓名" PropertyName="Text" 
                            Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
                    
                    SelectCommand="SELECT [职称] FROM [教师任课情况查询] WHERE (([教师编号] = ?) AND ([姓名] = ?))">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="TextBox1" Name="教师编号" PropertyName="Text" 
                            Type="String" />
                        <asp:ControlParameter ControlID="TextBox2" Name="姓名" PropertyName="Text" 
                            Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource6" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
                    
                    SelectCommand="SELECT [任课时间] FROM [教师任课情况查询] WHERE (([教师编号] = ?) AND ([姓名] = ?) AND ([教师编号] = ?) AND ([姓名] = ?))">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="TextBox1" Name="教师编号" PropertyName="Text" 
                            Type="String" />
                        <asp:ControlParameter ControlID="TextBox2" Name="姓名" PropertyName="Text" 
                            Type="String" />
                        <asp:ControlParameter ControlID="TextBox1" Name="教师编号2" PropertyName="Text" 
                            Type="String" />
                        <asp:ControlParameter ControlID="TextBox2" Name="姓名2" PropertyName="Text" 
                            Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource5" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
                    
                    SelectCommand="SELECT [课程名称] FROM [教师任课情况查询] WHERE (([教师编号] = ?) AND ([姓名] = ?) AND ([教师编号] = ?) AND ([姓名] = ?))">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="TextBox1" Name="教师编号" PropertyName="Text" 
                            Type="String" />
                        <asp:ControlParameter ControlID="TextBox2" Name="姓名" PropertyName="Text" 
                            Type="String" />
                        <asp:ControlParameter ControlID="TextBox1" Name="教师编号2" PropertyName="Text" 
                            Type="String" />
                        <asp:ControlParameter ControlID="TextBox2" Name="姓名2" PropertyName="Text" 
                            Type="String" />
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
