<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CoursePage.aspx.cs" Inherits="App_Views_Course" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>课程档案</title>
    <link href="../../App_Themes/css/IndexStyle.css" rel="Stylesheet" type="text/css" />
    <link href="../../App_Themes/css/Course.css" rel="Stylesheet" type="text/css" />
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
                    <a href="http://eol.wyu.edu.cn/eol/homepage/common/">教学平台</a>
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
            <div>
                <img src="../../App_Themes/images/index/Index_Wyu.jpg" alt="wyu"/>
            </div>
            <div class="center-left">
                <div class="left-info">
                    <span>请选择课程代号：</span>
                    <asp:DropDownList ID="DropDownList1" runat="server" AppendDataBoundItems="True"
                        DataSourceID="SqlDataSource1" DataTextField="课程代号" DataValueField="课程代号" 
                        AutoPostBack="True" Width="200px" Height="30px">
                        <asp:ListItem>-请选择-</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
                    SelectCommand="SELECT [课程代号] FROM [课程档案]"></asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
                    SelectCommand="SELECT [课程代号] FROM [课程档案] WHERE ([课程代号] = ?)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="课程代号" 
                            PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
                    SelectCommand="SELECT [课程名称] FROM [课程档案] WHERE ([课程代号] = ?)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="课程代号" 
                            PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
                    SelectCommand="SELECT [类别] FROM [课程档案] WHERE ([课程代号] = ?)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="课程代号" 
                            PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource5" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
                    SelectCommand="SELECT [考核方式] FROM [课程档案] WHERE ([课程代号] = ?)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="课程代号" 
                            PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource6" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
                    SelectCommand="SELECT [学分] FROM [课程档案] WHERE ([课程代号] = ?)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="课程代号" 
                            PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource7" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
                    SelectCommand="SELECT [备注] FROM [课程档案] WHERE ([课程代号] = ?)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="课程代号" 
                            PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </div>
            <div class="center-right">
            <div class="right-info">
                <asp:FormView ID="FormView1" runat="server" DataKeyNames="课程代号" 
                    DataSourceID="SqlDataSource2" >
                    <EditItemTemplate>
                        课程代号:
                        <asp:Label ID="课程代号Label1" runat="server" Text='<%# Eval("课程代号") %>' />
                        <br />
                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                            CommandName="Update" Text="更新" />
                        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                            CausesValidation="False" CommandName="Cancel" Text="取消" />
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        课程代号:
                        <asp:TextBox ID="课程代号TextBox" runat="server" Text='<%# Bind("课程代号") %>' />
                        <br />
                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                            CommandName="Insert" Text="插入" />
                        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                            CausesValidation="False" CommandName="Cancel" Text="取消" />
                    </InsertItemTemplate>
                    <ItemTemplate>
                        课程代号:
                        <asp:Label ID="课程代号Label" runat="server" Text='<%# Eval("课程代号") %>' />
                        <br />
                    </ItemTemplate>
                </asp:FormView>
                <br />
                <br />
                <br />
                <asp:FormView ID="FormView2" runat="server" DataSourceID="SqlDataSource3">
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
                <br />
                <br />
                <asp:FormView ID="FormView3" runat="server" DataSourceID="SqlDataSource4">
                    <EditItemTemplate>
                        类别:
                        <asp:TextBox ID="类别TextBox" runat="server" Text='<%# Bind("类别") %>' />
                        <br />
                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                            CommandName="Update" Text="更新" />
                        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                            CausesValidation="False" CommandName="Cancel" Text="取消" />
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        类别:
                        <asp:TextBox ID="类别TextBox" runat="server" Text='<%# Bind("类别") %>' />
                        <br />
                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                            CommandName="Insert" Text="插入" />
                        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                            CausesValidation="False" CommandName="Cancel" Text="取消" />
                    </InsertItemTemplate>
                    <ItemTemplate>
                        类别:
                        <asp:Label ID="类别Label" runat="server" Text='<%# Bind("类别") %>' />
                        <br />

                    </ItemTemplate>
                </asp:FormView>
                <br />
                <br />
                <br />
                <asp:FormView ID="FormView4" runat="server" DataSourceID="SqlDataSource5">
                    <EditItemTemplate>
                        考核方式:
                        <asp:TextBox ID="考核方式TextBox" runat="server" Text='<%# Bind("考核方式") %>' />
                        <br />
                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                            CommandName="Update" Text="更新" />
                        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                            CausesValidation="False" CommandName="Cancel" Text="取消" />
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        考核方式:
                        <asp:TextBox ID="考核方式TextBox" runat="server" Text='<%# Bind("考核方式") %>' />
                        <br />
                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                            CommandName="Insert" Text="插入" />
                        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                            CausesValidation="False" CommandName="Cancel" Text="取消" />
                    </InsertItemTemplate>
                    <ItemTemplate>
                        考核方式:
                        <asp:Label ID="考核方式Label" runat="server" Text='<%# Bind("考核方式") %>' />
                        <br />

                    </ItemTemplate>
                </asp:FormView>
                <br />
                <br />
                <br />
                <asp:FormView ID="FormView5" runat="server" DataSourceID="SqlDataSource6">
                    <EditItemTemplate>
                        学分:
                        <asp:TextBox ID="学分TextBox" runat="server" Text='<%# Bind("学分") %>' />
                        <br />
                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                            CommandName="Update" Text="更新" />
                        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                            CausesValidation="False" CommandName="Cancel" Text="取消" />
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        学分:
                        <asp:TextBox ID="学分TextBox" runat="server" Text='<%# Bind("学分") %>' />
                        <br />
                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                            CommandName="Insert" Text="插入" />
                        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                            CausesValidation="False" CommandName="Cancel" Text="取消" />
                    </InsertItemTemplate>
                    <ItemTemplate>
                        学分:
                        <asp:Label ID="学分Label" runat="server" Text='<%# Bind("学分") %>' />
                        <br />

                    </ItemTemplate>
                </asp:FormView>
                <br />
                <br />
                <br />
                <asp:FormView ID="FormView6" runat="server" DataSourceID="SqlDataSource7">
                    <EditItemTemplate>
                        备注:
                        <asp:TextBox ID="备注TextBox" runat="server" Text='<%# Bind("备注") %>' />
                        <br />
                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                            CommandName="Update" Text="更新" />
                        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                            CausesValidation="False" CommandName="Cancel" Text="取消" />
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        备注:
                        <asp:TextBox ID="备注TextBox" runat="server" Text='<%# Bind("备注") %>' />
                        <br />
                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                            CommandName="Insert" Text="插入" />
                        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                            CausesValidation="False" CommandName="Cancel" Text="取消" />
                    </InsertItemTemplate>
                    <ItemTemplate>
                        备注:
                        <asp:Label ID="备注Label" runat="server" Text='<%# Bind("备注") %>' />
                        <br />

                    </ItemTemplate>
                </asp:FormView>
            </div>
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
