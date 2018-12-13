<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DataPage.aspx.cs" Inherits="App_Views_Data" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>数据维护</title>
    <link href="../../App_Themes/css/IndexStyle.css" rel="Stylesheet" type="text/css" />
    <link href="../../App_Themes/css/Data.css" rel="Stylesheet" type="text/css" />
</head>
<body>
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
            <div>
                <img src="../../App_Themes/images/data/DatatPage_03.jpg" alt="wyu"/>
            </div>
            <div class="center-lizi">
                <img src="../../App_Themes/images/data/DatatPage_06.jpg" alt="Course Eaxmple"/>
                <span>
                <a href=""><img src="../../App_Themes/images/index/Index_More.jpg" alt="more"/></a>
                </span>
            </div>
            <div class="piture">
                <div class="left">
                    <a href="TeacherData.aspx"><img src="../../App_Themes/images/data/DatatPage_09.jpg" alt=""/>
                        <span>教师档案</span>
                    </a>
                </div>
                <div class="right">
                    <div class="top">
                        <div class="top-left">
                            <a href="AcademyData.aspx"><img src="../../App_Themes/images/data/DatatPage_10.jpg" alt=""/>
                                <span>学院档案</span>
                            </a>
                        </div>
                        <div class="top-right">
                            <a href="StudentData.aspx"><img src="../../App_Themes/images/data/DatatPage_11.jpg" alt=""/>
                                <span>学生档案</span>
                            </a>
                        </div>
                    </div>
                    <div class="low">
                        <div class="low-left">
                            <a href="CourseData.aspx"><img src="../../App_Themes/images/data/DatatPage_14.jpg" alt=""/>
                                <span>课程档案</span>
                            </a>
                        </div>
                        <div class="low-right">
                            <a href="GradeData.aspx"><img src="../../App_Themes/images/data/DatatPage_16.jpg" alt=""/>
                                <span>成绩档案</span>
                            </a>
                        </div>
                    </div>
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
</body>
</html>
