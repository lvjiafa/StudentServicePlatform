<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CoursePage.aspx.cs" Inherits="App_Views_Course" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>课程档案</title>
    <link href="../App_Themes/css/IndexStyle.css" rel="Stylesheet" type="text/css" />
    <link href="../App_Themes/css/Course.css" rel="Stylesheet" type="text/css" />
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
                        <a href="IndexPage.htm"></a>
                        <img src="../App_Themes/images/index/Index_Asp.jpg" width="960px" height="120px" alt="Web程序设计"/>
                    </h1>
                </div>
            </div>
        </div>
        <div class="header-daohang">
            <div class="all-center">
            <ul>
                <li class="a">
                    <span><a href="IndexPage.htm">网站首页</a></span> 
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
                <img src="../App_Themes/images/index/Index_Wyu.jpg" alt="wyu"/>
            </div>
            <div class="center-left">
                <span class="left-xuanze">请选择课程代号：</span>
                <span class="left-xiala">
                <asp:DropDownList ID="DropDownList1" runat="server" Width="250px" Height="30px">
                </asp:DropDownList>
                </span>
            </div>
            <div class="center-right">
                <span class="right-daihao">课程代号：</span>
                <span class="right-name">课程名称：</span>
                <span class="right-leibie">类别：</span>
                <span class="right-kaohe">考核方式：</span>
                <span class="right-xuefen">学分：</span>
                <span class="right-beizhu">备注：</span>
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
