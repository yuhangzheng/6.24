<%@ page import="com.internshipElves.entity.AdminGetCom" %>
<%@ page import="java.util.List" %>
<%@ page import="com.internshipElves.entity.AdminGetStu" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <script id="allmobilize" charset="utf-8" src="${pageContext.request.contextPath}/js/allmobilize.min.js"></script>
    <meta http-equiv="Cache-Control" content="no-siteapp"/>
    <link rel="alternate" media="handheld"/>
    <!-- end 云适配 -->
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>后台管理</title>
    <meta property="qc:admins" content="23635710066417756375"/>
    <meta content="实习精灵" name="description">
    <meta content="实习精灵" name="keywords">
    <meta name="baidu-site-verification" content="QIQ6KC1oZ6"/>

    <!-- <div class="web_root"  style="display:none">h</div> -->
    <script type="text/javascript">
        var ctx = "h";
        console.log(1);
    </script>
    <link rel="Shortcut Icon" href="http://www.lagou.com/h/images/favicon.ico">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/external.min.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/popup.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/list.css"/>

    <script src="${pageContext.request.contextPath}/js/list.js" type="text/javascript"></script>
    <script type="text/javascript"
            src="${pageContext.request.contextPath}http://code.jquery.com/jquery-1.8.2.js"></script>
    <script src="${pageContext.request.contextPath}/js/jquery.1.10.1.min.js" type="text/javascript"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.lib.min.js"></script>
    <script src="/js/ajaxfileupload.js" type="text/javascript"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/additional-methods.js"></script>
    <!--[if lte IE 8]>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/excanvas.js"></script>
    <![endif]-->
    <script type="text/javascript">
        var youdao_conv_id = 271546;
    </script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/conv.js"></script>
</head>
<body>
<div id="body">
    <div id="header">
        <div class="wrapper">
            <a href="index.html" class="logo">
                <img src="${pageContext.request.contextPath}/images/logo.png" width="229" height="43"
                     alt="拉勾招聘-专注互联网招聘"/>
            </a>
            <ul class="reset" id="navheader">
                <li class="current"><a href="${pageContext.request.contextPath}/internshipElves/index.jsp">首页</a></li>
                <li><a href="${pageContext.request.contextPath}/student/isLogin">我的简历</a></li>
                <li><a href="${pageContext.request.contextPath}/internshipElves/companyList.jsp" target="_blank">公司</a>
                </li>
                <li><a href="${pageContext.request.contextPath}/personCenter/loginIn" rel="nofollow">个人中心</a></li>
                <c:choose>
                    <c:when test="${empty stuId}">
                        <li><a href="create.html" rel="nofollow">企业中心</a></li>
                        preview
                    </c:when>
                </c:choose>
            </ul>
            <ul class="loginTop">
                <c:choose>
                    <c:when test="${empty stuId  && empty comId && empty adminId}">
                        <li><a href="${pageContext.request.contextPath}/internshipElves/comLogin.jsp" rel="nofollow">企业入口</a>
                        </li>
                        <li>|</li>
                        <li><a href="${pageContext.request.contextPath}/internshipElves/login.jsp"
                               rel="nofollow">学生入口</a></li>
                        <li>|</li>
                        <li><a href="${pageContext.request.contextPath}/internshipElves/adminLogin.jsp" rel="nofollow">管理员入口</a>
                        </li>
                    </c:when>

                    <c:when test="${!empty adminId && !empty adminName}">
                        <li>欢迎管理员${adminName}</li>
                        <li>|</li>
                        <li><a href="${pageContext.request.contextPath}/adminLogin/logout">退出</a></li>
                    </c:when>
                </c:choose>
            </ul>
        </div>
    </div><!-- end #header -->
    <div id="container">

        <div class="sidebar">
            <div id="options" class="greybg">
                <dl>
                    <dt>审核功能<em></em></dt>
                    <dd id="salary">
                        <div><a href="${pageContext.request.contextPath}/adminCheckCom/queryAll">公司审核</a></div>
                        <div><a href="${pageContext.request.contextPath}/adminCheckStu/queryAll">学生审核</a></div>
                    </dd>
                </dl>
            </div>
        </div>

        <div class="content">
            <style>
                .ui-autocomplete {
                    width: 488px;
                    background: #fafafa !important;
                    position: relative;
                    z-index: 10;
                    border: 2px solid #91cebe;
                }

                .ui-autocomplete-category {
                    font-size: 16px;
                    color: #999;
                    width: 50px;
                    position: absolute;
                    z-index: 11;
                    right: 0px; /*top: 6px; */
                    text-align: center;
                    border-top: 1px dashed #e5e5e5;
                    padding: 5px 0;
                }

                .ui-menu-item {
                    *width: 439px;
                    vertical-align: middle;
                    position: relative;
                    margin: 0px;
                    margin-right: 50px !important;
                    background: #fff;
                    border-right: 1px dashed #ededed;
                }

                .ui-menu-item a {
                    display: block;
                    overflow: hidden;
                }
            </style>
            <table width="730px" style="table-layout:fixed;">
                <%
                    if (session.getAttribute("comList") != null&& session.getAttribute("status") != null && session.getAttribute("status").equals("com")) {
                        List<AdminGetCom> list = (List<AdminGetCom>) session.getAttribute("comList");
                        System.out.println(list);
                        out.print("<tr><th width=\"25%\" style=\"word-break : break-all; \">公司邮箱</th><th width=\"25%\" style=\"word-break : break-all; \">公司创始日期</th><th width=\"25%\" style=\"word-break : break-all; \">公司名字</th><th width=\"25%\" style=\"word-break : break-all; \">公司地址</th><th width=\"25%\" style=\"word-break : break-all; \">公司所在城市</th><th width=\"25%\" style=\"word-break : break-all; \">公司简介</th><th></th></tr>");
                        for (AdminGetCom agc : list) {
                            out.print("<tr><th>" + agc.getComEmail() + "</th>");
                            out.print("<th>" + agc.getComCreateDate() + "</th>");
                            out.print("<th>" + agc.getComName() + "</th>");
                            out.print("<th>" + agc.getComInterAddr() + "</th>");
                            out.print("<th>" + agc.getComCity() + "</th>");
                            out.print("<th>" + agc.getComIntroduce() + "</th>");
                            out.print("<th><form action=\"/adminCheckCom/deleteCom\" method=\"post\">\n" +
                                    "    <input type=\"hidden\" value=\"" + agc.getComId() + "\" name=\"comId\">\n" +
                                    "    <input type=\"submit\" value=\"删除\" name=\"submit\">\n" +
                                    "</form></th></tr>");
                        }
                    } else if(session.getAttribute("stuList")!= null && session.getAttribute("status") != null && session.getAttribute("status").equals("stu")){
                        List<AdminGetStu> list = (List<AdminGetStu>) session.getAttribute("stuList");
                        out.print("<tr><th width=\"25%\" style=\"word-break : break-all; \">学生姓名</th><th width=\"25%\" style=\"word-break : break-all; \">学生生日</th><th width=\"25%\" style=\"word-break : break-all; \">学生性别</th><th width=\"25%\" style=\"word-break : break-all; \">学生地址</th><th width=\"25%\" style=\"word-break : break-all; \">学生电话</th><th width=\"25%\" style=\"word-break : break-all; \">学生电子邮件</th><th width=\"25%\" style=\"word-break : break-all; \">学生学校</th><th width=\"25%\" style=\"word-break : break-all; \"></th></tr>");
                        for(AdminGetStu ags : list) {
                            out.print("<th>" + ags.getStuName() + "</th>");
                            out.print("<th>" + ags.getStuBirth() + "</th>");
                            out.print("<th>" + ags.getStuGender() + "</th>");
                            out.print("<th>" + ags.getStuAddrCity() + "</th>");
                            out.print("<th>" + ags.getStuTel() + "</th>");
                            out.print("<th>" + ags.getStuEmail() + "</th>");
                            out.print("<th>" + ags.getStuSchool() + "</th>");
                            out.print("<th><form action=\"/adminCheckStu/deleteStu\" method=\"post\">\n" +
                                    "    <input type=\"hidden\" value=\"" + ags.getStuId() + "\" name=\"stuId\">\n" +
                                    "    <input type=\"submit\" value=\"删除\" name=\"submit\">\n" +
                                    "</form></th></tr>");
                        }
                    }
                    else {
                        out.print("抱歉，暂无相关信息！");
                    }
                %>
            </table>
        </div>

        <div class="clear"></div>
        <input type="hidden" id="resubmitToken" value=""/>
        <a id="backtop" title="回到顶部" rel="nofollow"></a>
    </div><!-- end #container -->
</div><!-- end #body -->
<div id="footer">
    <div class="wrapper">
        <a href="h/about.html" target="_blank" rel="nofollow">联系我们</a>
        <a href="h/af/zhaopin.html" target="_blank">互联网公司导航</a>
        <a href="http://e.weibo.com/lagou720" target="_blank" rel="nofollow">实习精灵微博</a>
        <div class="copyright">&copy;2018-2019 InternshipElves <a target="_blank"
                                                                  href="http://www.miitbeian.gov.cn/state/outPortal/loginPortal.action">京ICP备18023790号-2</a>
        </div>
    </div>
</div>

<script type="text/javascript" src="${pageContext.request.contextPath}/js/core.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/popup.min.js"></script>

</body>
</html>
