<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AvgGrade_department.aspx.cs" Inherits="App_Views_grade_AvgGrade_department" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>各系按科目平均成绩</title>
    <link href="../../App_Themes/css/IndexStyle.css" rel="Stylesheet" type="text/css" />
    <link href="../../App_Themes/css/Data.css" rel="Stylesheet" type="text/css" />
    <link href="../../App_Themes/css/Info.css" rel="Stylesheet" type="text/css" />
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
    <div class="t-center">
    <br /><br />
        <div class="i-left">
            <asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSource2" 
                EnableViewState="True" RightToLeft="Yes" Width="720px" Height="350px" 
                IsMapEnabled="False">
                <Series>
                    <asp:Series Name="Series1" XValueMember="课程名称" YValueMembers="平均成绩" 
                        YValuesPerPoint="4">
                    </asp:Series>
                </Series>
                <ChartAreas>
                    <asp:ChartArea Name="ChartArea1">
                        <AxisX IntervalAutoMode="VariableCount" IsLabelAutoFit="False">
                            <LabelStyle Angle="90" />
                        </AxisX>
                    </asp:ChartArea>
                </ChartAreas>
            </asp:Chart>
        </div>
        <div class="i-right">
            <span>请选择院系：</span><br />
            <asp:DropDownList ID="DropDownList1" runat="server" AppendDataBoundItems="True" AutoPostBack="True"
                DataSourceID="SqlDataSource1" DataTextField="院系名称" DataValueField="院系名称">
            </asp:DropDownList>
        </div>
            <span class="i-center">
                <asp:ImageButton ID="back" runat="server" PostBackUrl="~/App_Views/grade/GradePage.aspx"
                    ImageUrl="~/App_Themes/images/report/ReportPage2_03.jpg" Height="30px" />
            </span>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
                SelectCommand="SELECT DISTINCT 院系名称 FROM 各院系按课程的平均成绩查询">
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
                
            SelectCommand="SELECT [课程名称], [平均成绩] FROM [各院系按课程的平均成绩查询] WHERE ([院系名称] = ?)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="院系名称" 
                            PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
            </asp:SqlDataSource>
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

