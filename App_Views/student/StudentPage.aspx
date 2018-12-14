<%@ Page Language="C#" AutoEventWireup="true" CodeFile="StudentPage.aspx.cs" Inherits="App_Views_Student" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>学生资讯</title>
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
                <asp:FormView ID="FormView1" runat="server" DataKeyNames="学号" 
                    DataSourceID="SqlDataSource1" >
                    <EditItemTemplate>
                        学号:
                        <asp:Label ID="学号Label1" runat="server" Text='<%# Eval("学号") %>' />
                        <br />
                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                            CommandName="Update" Text="更新" />
                        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                            CausesValidation="False" CommandName="Cancel" Text="取消" />
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        学号:
                        <asp:TextBox ID="学号TextBox" runat="server" Text='<%# Bind("学号") %>' />
                        <br />
                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                            CommandName="Insert" Text="插入" />
                        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                            CausesValidation="False" CommandName="Cancel" Text="取消" />
                    </InsertItemTemplate>
                    <ItemTemplate>
                        学号:
                        <asp:Label ID="学号Label" runat="server" Text='<%# Eval("学号") %>' />
                        <br />

                    </ItemTemplate>
                </asp:FormView>
                <br />
                <asp:FormView ID="FormView2" runat="server" DataSourceID="SqlDataSource2">
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
                <asp:FormView ID="FormView3" runat="server" DataSourceID="SqlDataSource3">
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
                <asp:FormView ID="FormView4" runat="server" DataSourceID="SqlDataSource5">
                    <EditItemTemplate>
                        生源地:
                        <asp:TextBox ID="生源地TextBox" runat="server" Text='<%# Bind("生源地") %>' />
                        <br />
                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                            CommandName="Update" Text="更新" />
                        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                            CausesValidation="False" CommandName="Cancel" Text="取消" />
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        生源地:
                        <asp:TextBox ID="生源地TextBox" runat="server" Text='<%# Bind("生源地") %>' />
                        <br />
                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                            CommandName="Insert" Text="插入" />
                        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                            CausesValidation="False" CommandName="Cancel" Text="取消" />
                    </InsertItemTemplate>
                    <ItemTemplate>
                        生源地:
                        <asp:Label ID="生源地Label" runat="server" Text='<%# Bind("生源地") %>' />
                        <br />

                    </ItemTemplate>
                </asp:FormView>
                <br />
                <asp:FormView ID="FormView5" runat="server" DataSourceID="SqlDataSource5">
                    <EditItemTemplate>
                        生源地:
                        <asp:TextBox ID="生源地TextBox" runat="server" Text='<%# Bind("生源地") %>' />
                        <br />
                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                            CommandName="Update" Text="更新" />
                        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                            CausesValidation="False" CommandName="Cancel" Text="取消" />
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        生源地:
                        <asp:TextBox ID="生源地TextBox" runat="server" Text='<%# Bind("生源地") %>' />
                        <br />
                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                            CommandName="Insert" Text="插入" />
                        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                            CausesValidation="False" CommandName="Cancel" Text="取消" />
                    </InsertItemTemplate>
                    <ItemTemplate>
                        生源地:
                        <asp:Label ID="生源地Label" runat="server" Text='<%# Bind("生源地") %>' />
                        <br />

                    </ItemTemplate>
                </asp:FormView>
                <br />
                <asp:FormView ID="FormView6" runat="server" DataSourceID="SqlDataSource6">
                    <EditItemTemplate>
                        政治面貌:
                        <asp:TextBox ID="政治面貌TextBox" runat="server" Text='<%# Bind("政治面貌") %>' />
                        <br />
                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                            CommandName="Update" Text="更新" />
                        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                            CausesValidation="False" CommandName="Cancel" Text="取消" />
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        政治面貌:
                        <asp:TextBox ID="政治面貌TextBox" runat="server" Text='<%# Bind("政治面貌") %>' />
                        <br />
                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                            CommandName="Insert" Text="插入" />
                        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                            CausesValidation="False" CommandName="Cancel" Text="取消" />
                    </InsertItemTemplate>
                    <ItemTemplate>
                        政治面貌:
                        <asp:Label ID="政治面貌Label" runat="server" Text='<%# Bind("政治面貌") %>' />
                        <br />

                    </ItemTemplate>
                </asp:FormView>
                <br />
                <asp:FormView ID="FormView7" runat="server" DataSourceID="SqlDataSource7">
                    <EditItemTemplate>
                        是否住宿:
                        <asp:CheckBox ID="是否住宿CheckBox" runat="server" Checked='<%# Bind("是否住宿") %>' />
                        <br />
                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                            CommandName="Update" Text="更新" />
                        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                            CausesValidation="False" CommandName="Cancel" Text="取消" />
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        是否住宿:
                        <asp:CheckBox ID="是否住宿CheckBox" runat="server" Checked='<%# Bind("是否住宿") %>' />
                        <br />
                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                            CommandName="Insert" Text="插入" />
                        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                            CausesValidation="False" CommandName="Cancel" Text="取消" />
                    </InsertItemTemplate>
                    <ItemTemplate>
                        是否住宿:
                        <asp:CheckBox ID="是否住宿CheckBox" runat="server" Checked='<%# Bind("是否住宿") %>' 
                            Enabled="false" />
                        <br />

                    </ItemTemplate>
                </asp:FormView>
                <br />
                <asp:FormView ID="FormView8" runat="server" DataSourceID="SqlDataSource8">
                    <EditItemTemplate>
                        宿舍电话:
                        <asp:TextBox ID="宿舍电话TextBox" runat="server" Text='<%# Bind("宿舍电话") %>' />
                        <br />
                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                            CommandName="Update" Text="更新" />
                        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                            CausesValidation="False" CommandName="Cancel" Text="取消" />
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        宿舍电话:
                        <asp:TextBox ID="宿舍电话TextBox" runat="server" Text='<%# Bind("宿舍电话") %>' />
                        <br />
                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                            CommandName="Insert" Text="插入" />
                        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                            CausesValidation="False" CommandName="Cancel" Text="取消" />
                    </InsertItemTemplate>
                    <ItemTemplate>
                        宿舍电话:
                        <asp:Label ID="宿舍电话Label" runat="server" Text='<%# Bind("宿舍电话") %>' />
                        <br />

                    </ItemTemplate>
                </asp:FormView>
                <br />
                <asp:FormView ID="FormView9" runat="server" DataSourceID="SqlDataSource9">
                    <EditItemTemplate>
                        照片:
                        <asp:TextBox ID="照片TextBox" runat="server" Text='<%# Bind("照片") %>' />
                        <br />
                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                            CommandName="Update" Text="更新" />
                        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                            CausesValidation="False" CommandName="Cancel" Text="取消" />
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        照片:
                        <asp:TextBox ID="照片TextBox" runat="server" Text='<%# Bind("照片") %>' />
                        <br />
                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                            CommandName="Insert" Text="插入" />
                        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                            CausesValidation="False" CommandName="Cancel" Text="取消" />
                    </InsertItemTemplate>
                    <ItemTemplate>
                        照片:
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# Bind("照片") %>' Height="100px" Width="100px" />
                        <br />

                    </ItemTemplate>
                </asp:FormView>
            </div>
            </div>
            <div class="center-right">
                <span class="right-header">请先输入个人信息</span>
                <span class="right-nuber">你的学号：<asp:TextBox ID="TextBox1" runat="server" Height="30px"></asp:TextBox>
                </span>
                <span class="right-name">你的名字：<asp:TextBox ID="TextBox2" runat="server" Height="30px"></asp:TextBox>
                </span>
                <span class="right-button"><asp:ImageButton ID="Tijao" runat="server" ImageUrl="~/App_Themes/images/student/Student_Tijiao.jpg" />
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
                    SelectCommand="SELECT [学号] FROM [学生情况 查询] WHERE (([学号] = ?) AND ([姓名] = ?))">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="TextBox1" Name="学号" PropertyName="Text" 
                            Type="String" />
                        <asp:ControlParameter ControlID="TextBox2" Name="姓名" PropertyName="Text" 
                            Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
                    SelectCommand="SELECT [姓名] FROM [学生情况 查询] WHERE ([学号] = ?)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="TextBox1" Name="学号" PropertyName="Text" 
                            Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
                    SelectCommand="SELECT [性别] FROM [学生情况 查询] WHERE (([学号] = ?) AND ([姓名] = ?))">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="TextBox1" Name="学号" PropertyName="Text" 
                            Type="String" />
                        <asp:ControlParameter ControlID="TextBox2" Name="姓名" PropertyName="Text" 
                            Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
                    SelectCommand="SELECT [出生日期] FROM [学生情况 查询] WHERE (([学号] = ?) AND ([姓名] = ?))">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="TextBox1" Name="学号" PropertyName="Text" 
                            Type="String" />
                        <asp:ControlParameter ControlID="TextBox2" Name="姓名" PropertyName="Text" 
                            Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource5" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
                    SelectCommand="SELECT [生源地] FROM [学生情况 查询] WHERE (([学号] = ?) AND ([姓名] = ?))">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="TextBox1" Name="学号" PropertyName="Text" 
                            Type="String" />
                        <asp:ControlParameter ControlID="TextBox2" Name="姓名" PropertyName="Text" 
                            Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource6" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
                    SelectCommand="SELECT [政治面貌] FROM [学生情况 查询] WHERE (([学号] = ?) AND ([姓名] = ?))">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="TextBox1" Name="学号" PropertyName="Text" 
                            Type="String" />
                        <asp:ControlParameter ControlID="TextBox2" Name="姓名" PropertyName="Text" 
                            Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource7" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
                    SelectCommand="SELECT [是否住宿] FROM [学生情况 查询] WHERE (([学号] = ?) AND ([姓名] = ?))">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="TextBox1" Name="学号" PropertyName="Text" 
                            Type="String" />
                        <asp:ControlParameter ControlID="TextBox2" Name="姓名" PropertyName="Text" 
                            Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource8" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
                    SelectCommand="SELECT [宿舍电话] FROM [学生情况 查询] WHERE (([学号] = ?) AND ([姓名] = ?))">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="TextBox1" Name="学号" PropertyName="Text" 
                            Type="String" />
                        <asp:ControlParameter ControlID="TextBox2" Name="姓名" PropertyName="Text" 
                            Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource9" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
                    SelectCommand="SELECT [照片] FROM [学生情况 查询] WHERE (([学号] = ?) AND ([姓名] = ?))">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="TextBox1" Name="学号" PropertyName="Text" 
                            Type="String" />
                        <asp:ControlParameter ControlID="TextBox2" Name="姓名" PropertyName="Text" 
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
