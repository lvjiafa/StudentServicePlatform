<%@ Page Language="VB" AutoEventWireup="false" CodeFile="ElectiveCourse.aspx.vb" Inherits="App_Views_grade_ElectiveCourse" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>选课与成绩查询</title>
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
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                AutoGenerateColumns="False" 
                DataSourceID="SqlDataSource1" PageSize="20">
                <Columns>
                    <asp:BoundField DataField="院系名称" HeaderText="院系名称" 
                        SortExpression="院系名称" />
                    <asp:BoundField DataField="学号" HeaderText="学号" 
                        SortExpression="学号" />
                    <asp:BoundField DataField="姓名" HeaderText="姓名" SortExpression="姓名" />
                    <asp:BoundField DataField="性别" HeaderText="性别" SortExpression="性别" />
                    <asp:BoundField DataField="课程名称" HeaderText="课程名称" SortExpression="课程名称" />
                    <asp:BoundField DataField="类别" HeaderText="类别" SortExpression="类别" />
                    <asp:BoundField DataField="考核方式" HeaderText="考核方式" SortExpression="考核方式" />
                    <asp:BoundField DataField="修课时间" HeaderText="修课时间" SortExpression="修课时间" />
                    <asp:BoundField DataField="学分" HeaderText="学分" SortExpression="学分" />
                    <asp:BoundField DataField="成绩" HeaderText="成绩" SortExpression="成绩" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
                
                SelectCommand="SELECT 系别.院系名称, 学生情况.学号, 学生情况.姓名, 学生情况.性别, 课程档案.课程名称, 课程档案.类别, 课程档案.考核方式, [选课及成绩 查询].修课时间, 课程档案.学分, [选课及成绩 查询].成绩 FROM ((([选课及成绩 查询] INNER JOIN 学生情况 ON [选课及成绩 查询].学号 = 学生情况.学号) INNER JOIN 课程档案 ON [选课及成绩 查询].课程代号 = 课程档案.课程代号) INNER JOIN 系别 ON 学生情况.院系代号 = 系别.院系代号)"></asp:SqlDataSource>
        </div>
    </div>
    </form>
</body>
</html>
