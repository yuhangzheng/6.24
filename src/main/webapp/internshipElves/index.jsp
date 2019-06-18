
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<html class="no-js" lang="zh-cn">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>中山大学就业服务中心</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- favicon
    ============================================ -->
    <link rel="shortcut icon" type="image/x-icon" href="/images/favicon.ico">

    <!-- Google Fonts
    ============================================ -->
    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" rel="stylesheet">

    <!-- All css files are included here
    ============================================ -->
    <!-- Bootstrap CSS
    ============================================ -->
    <link rel="stylesheet" href="/css/bootstrap.min.css">

    <!-- This core.css file contents all plugins css file
    ============================================ -->
    <link rel="stylesheet" href="/css/core.css">

    <!-- Theme shortcodes/elements style
    ============================================ -->
    <link rel="stylesheet" href="/css/shortcode/shortcodes.css">

    <!-- Color Swithcer CSS
    ============================================ -->
    <link rel="stylesheet" href="/css/plugins/color-switcher.css">

    <!--  Theme main style
    ============================================ -->
    <link rel="stylesheet" href="/css/style.css">

    <!-- Color CSS
    ============================================ -->
    <link rel="stylesheet" href="/css/plugins/color.css">

    <!-- Responsive CSS
    ============================================ -->
    <link rel="stylesheet" href="/css/responsive.css">
    <link rel="stylesheet" href="/nivo-slider/css/nivo-slider.css">
    <link rel="stylesheet" href="/nivo-slider/css/preview.css">


    <!-- Modernizr JS -->
    <script src="/js/vendor/modernizr-2.8.3.min.js"></script>
    <!-- Color Css Files
            ============================================ -->

    <link rel="Shortcut Icon" href="h/images/favicon.ico">
    <link rel="stylesheet" type="text/css" href="/css/style.css"/>
    <link rel="stylesheet" type="text/css" href="/css/external.min.css"/>
    <link rel="stylesheet" type="text/css" href="/css/popup.css"/>
    <script type="text/javascript" src="/js/hotJobs.js"></script>
    <script src="/js/jquery.1.10.1.min.js" type="text/javascript"></script>
    <script type="text/javascript" src="/js/jquery.lib.min.js"></script>
    <script src="/js/ajaxfileupload.js" type="text/javascript"></script>
    <script type="text/javascript" src="/js/additional-methods.js"></script>
    <script type="text/javascript">
        var youdao_conv_id = 271546;
    </script>
    <script type="text/javascript" src="/js/conv.js"></script>

</head>
<body>
<!--[if lt IE 8]>
<p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
<![endif]-->

<!--Main Wrapper Start-->
<div class="as-mainwrapper">
    <!--Bg White Start-->
    <div class="bg-white">
        <!--Header Area Start-->
        <div id="body">
            <div id="header">
                <div class="wrapper">
                    <a href="index.html" class="logo">
                        <img src="/images/logo.png" width="229" height="43" alt="实习精灵" />
                    </a>
                    <ul class="reset" id="navheader">
                        <li class="current"><a href="">首页</a></li>
                        <li ><a href="${pageContext.request.contextPath}/internshipElves/companyList.jsp" target="_blank">公司</a></li>
                        <li ><a href="${pageContext.request.contextPath}/forum" rel="nofollow">论坛</a></li>
                        <li ><a href="http://job.gd.gov.cn/zuixinzixun/zhengwugongkai/" target="_blank">政策公告</a></li>
                        <li ><a href="${pageContext.request.contextPath}/personCenter/loginIn" rel="nofollow">个人中心</a></li>


                        <c:choose>
                            <c:when test="${empty stuId}">
                                <li ><a href="create.html" rel="nofollow">企业中心</a></li>preview
                            </c:when>
                        </c:choose>
                    </ul>
                    <ul class="loginTop">
                        <c:choose>
                            <c:when test="${empty stuId  && empty comId && empty adminId}">

                                <li><a href="${pageContext.request.contextPath}/internshipElves/comLogin.jsp" rel="nofollow">企业登录</a></li>
                                <li>|</li>
                                <li><a href="${pageContext.request.contextPath}/internshipElves/login.jsp" rel="nofollow">学生登录</a></li>
                                <li>|</li>
                                <li><a href="${pageContext.request.contextPath}/internshipElves/adminLogin.jsp" rel="nofollow">管理员登录</a></li>
                            </c:when>

                            <c:when test="${!empty stuId && !empty stuName}">
                                <li><a href="${pageContext.request.contextPath}/personCenter/isLogin">欢迎${stuName}</a></li>
                                <li>|</li>
                                <li><a href="${pageContext.request.contextPath}/stuLogin/logout">退出</a></li>
                            </c:when>

                            <c:when test = "${!empty stuId || !empty stuPhoneMail}">
                                <li> <a href="${pageContext.request.contextPath}/personCenter/loginIn">欢迎${stuPhoneMail}</a></li>
                                <li>|</li>
                                <li><a href="${pageContext.request.contextPath}/stuLogin/logout">退出</a></li>
                            </c:when>

                            <c:when test = "${!empty comId || !empty comPhoneMail}">
                                <li> <a href="${pageContext.request.contextPath}/internshipElves/jobreleasesuccess.jsp">欢迎${comPhoneMail}</a></li>
                                <li>|</li>
                                <li><a href="${pageContext.request.contextPath}/comLogin/logout">退出</a></li>
                            </c:when>

                            <c:when test="${!empty adminId && !empty adminName}">
                                <li><a href="${pageContext.request.contextPath}/personCenter/isLogin">欢迎管理员${adminName}</a></li>
                                <li>|</li>
                                <li><a href="${pageContext.request.contextPath}/adminLogin/logout">退出</a></li>
                            </c:when>

                        </c:choose>
                    </ul>
                </div>
            </div><!-- end #header -->
            <!-- End of Header Area -->
            <!--Start of Slider Area-->
            <div class="slider-area">
                <div class="preview-2">
                    <div id="nivoslider" class="slides">
                        <img src="${pageContext.request.contextPath}/images/slider/1.jpg" alt="" title="#slider-1-caption1"/>
                    </div>
                    <div id="slider-1-caption1" class="nivo-html-caption nivo-caption">
                        <div class="banner-content slider-1">
                            <div class="container">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="text-content-wrapper">
                                            <div class="text-content">
                                                <h1 class="title1 wow bounceInDown text-uppercase text-white mb-16" data-wow-duration="3s" data-wow-delay="0s">中山大学就业服务中心</h1>
                                                <p class="sub-title wow bounceInRight hidden-xs" data-wow-duration="3s" data-wow-delay="1s"> 方便学生</br>服务社会</p>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--End of Slider Area-->
        <!--Start of Job Post Area-->
        <div class="job-post-area ptb-120">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="section-title text-center ">
                            <h2 class="uppercase pb-16 mb-21 mt-26">招聘信息</h2>
                            <div class="separator mt-35 mb-77">
                                <span><img src="/images/icons/1.png" alt=""></span>
                            </div>
                        </div>
                    </div>
                </div>
                <ul class="reset hotabbing">
                    <li class="current" onclick="hotJobs()">热门职位</li>
                    <li  onclick="newJobs()">最新职位</li>
                </ul>
                <div id="hotList">
                    <ul class="hot_pos reset" id="hotPos">
                    </ul>
                    <ul class="hot_pos hot_posHotPosition reset" style="display:none;" id="newJob">

                    </ul>
                </div>

                <div class="clear"></div>
            </div>
            <input type="hidden" value="" name="userid" id="userid" />
        </div>
    </div>
    <!-- End of Job Post Area -->


    <div class="blog-area ptb-120" id="meeting">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="section-title text-center ">

                        <div class="advertise-area ptb-120">
                            <div class="container">
                                <div class="row">
                                    <div class="col-lg-5 col-lg-offset-1 col-md-6 col-xs-12">
                                        <div class="fix video-post">
                                            <a href="#" class="block">
                                                <img src="/images/blog/2.jpg" alt="">
                                            </a>
                                        </div>
                                    </div>
                                    <div class="col-lg-6 col-md-6 col-xs-12">
                                        <div class="advertise-content pl-15">
                                            <h3 class="uppercase pb-16 mb-21 mt-26">政策公告</h3>
                                            <ul>
                                                <li><a href="http://job.gd.gov.cn/zuixinzixun/zhengwugongkai/content/post_2510403.html">广东省人民政府关于印发广东省进一步促进就业若...</a><span>[2019-06-10]</span></li><br>
                                                <li><a href="http://job.gd.gov.cn/zuixinzixun/zhengwugongkai/content/post_2510397.html">广东省人民政府办公厅关于印发广东省建设大众创...</a><span>[2019-06-10]</span></li><br>
                                                <li><a href="http://job.gd.gov.cn/zuixinzixun/zhengwugongkai/content/post_2510397.html">广东省人民政府办公厅关于印发广东省建设大众创业...</a><span>[2019-06-10]</span></li><br>
                                                <li><a href="http://job.gd.gov.cn/zuixinzixun/zhengwugongkai/content/post_2510387.html">广东省人民政府关于印发贯彻落实国家《“十三五”...</a><span>[2019-06-10]</span></li><br>
                                            </ul>
                                            <a href="http://job.gd.gov.cn/zuixinzixun/zhengwugongkai/" class="btn fr" target="_blank">查看更多 </a>'
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>



                    </div>
                    <!--End of Bg White-->

                    <!--Start of Footer Widget-area-->
                    <div class="footer-widget-area black-bg pt-120 pb-110">
                        <div class="container">
                            <div class="row">
                                <div class="col-md-2 col-sm-3">
                                    <div class="single-footer-widget">
                                        <h3 class="text-white mb-26"></h3>
                                    </div>
                                </div>
                                <div class="col-md-3 col-sm-4">
                                    <div class="single-footer-widget">
                                        <h3 class="text-white mb-22">联系邮箱</h3>
                                        <p class="text-white pr-10">
                                            <b>本科派遣管理:</b> <a href="jyzx@mail.sysu.edu.cn">jyzx@mail.sysu.edu.cn</a><br/>
                                            <b>研究生派遣管理:</b> <a href="jyzxyjs@mail.sysu.edu.cn">jyzxyjs@mail.sysu.edu.cn</a><br/>
                                            <b>选调生:</b><a href="xzbjob@mail.sysu.edu.cn">xzbjob@mail.sysu.edu.cn</a><br/>
                                        </p>
                                    </div>
                                </div>
                                <div class="col-md-2 col-sm-3">
                                    <div class="single-footer-widget">
                                        <h3 class="text-white mb-26"></h3>
                                    </div>
                                </div>
                                <div class="col-md-3 col-sm-4">
                                    <div class="single-footer-widget">
                                        <h3 class="text-white mb-21">通讯地址</h3>
                                        <p class="contact-us-details">
                                            <a>广州市海珠区新港西路135号中山大学南校区熊德龙学生活动中心5楼</a>
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--End of Footer Widget-area-->
                    <!-- Start of Footer area -->
                    <footer class="footer-area blue-bg text-center ptb-20">
                        <div class="container">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="footer-text">
                                        <a target="_blank" href="http://sysu.edu.cn">@中山大学</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </footer>
                    <!-- End of Footer area -->


                </div>
                <!--End of Main Wrapper Area-->


                <script>
                    function turnSearch(jobName) {
                        //alert(jobName.innerText);
                        if (window.XMLHttpRequest) {
                            xhr = new XMLHttpRequest();
                        } else {
                            xhr = new ActiveXObject('Microsoft.XMLHTTP');
                        }
                        var url_getJob = '${pageContext.request.contextPath}/student/returnToList'
                        var comReleaseJobSalaryLow = -1;
                        var comReleaseJobSalaryHigh = -1;
                        url_getJob+="?comReleaseJobName="+jobName.innerText+"&comReleaseJobCity="+"全国"+"&comReleaseJobSalaryLow="+
                            comReleaseJobSalaryLow+"&comReleaseJobSalaryHigh="+comReleaseJobSalaryHigh+"&comReleaseJobExp="+
                            "exp"+"&comReleaseJobRequir="+"dg"+"&comReleaseJobProp="+"jp";

                        xhr.open("GET",url_getJob );
                        xhr.setRequestHeader("Content-Type", "application/json;charset=utf-8");
                        xhr.onreadystatechange = returnToList;
                        xhr.send();

                    }

                    function returnToList() {
                        window.location.href="${pageContext.request.contextPath}/internshipElves/list.jsp";
                    }

                    function turnSearch2() {
                        if (window.XMLHttpRequest) {
                            xhr = new XMLHttpRequest();
                        } else {
                            xhr = new ActiveXObject('Microsoft.XMLHTTP');
                        }
                        var url_getJob = '${pageContext.request.contextPath}/student/returnToList'
                        var comReleaseJobSalaryLow = -1;
                        var comReleaseJobSalaryHigh = -1;
                        var comReleaseJobName = document.getElementById("search_input").value;
                        url_getJob+="?comReleaseJobName="+comReleaseJobName+"&comReleaseJobCity="+"全国"+"&comReleaseJobSalaryLow="+
                            comReleaseJobSalaryLow+"&comReleaseJobSalaryHigh="+comReleaseJobSalaryHigh+"&comReleaseJobExp="+
                            "exp"+"&comReleaseJobRequir="+"dg"+"&comReleaseJobProp="+"jp";

                        xhr.open("GET",url_getJob );
                        xhr.setRequestHeader("Content-Type", "application/json;charset=utf-8");
                        xhr.onreadystatechange = returnToList;
                        xhr.send();
                    }
                </script>
                <!-- jquery latest version
                ========================================================= -->
                <script src="/js/vendor/jquery-1.12.4.min.js"></script>

                <!-- Bootstrap framework js
                ========================================================= -->
                <script src="/js/bootstrap.min.js"></script>

                <!-- Owl Carousel js
                ========================================================= -->
                <script src="/js/owl.carousel.min.js"></script>

                <!-- nivo slider js
                ========================================================= -->
                <script src="/lib/nivo-slider/js/jquery.nivo.slider.js" type="text/javascript"></script>
                <script src="/lib/nivo-slider/home.js" type="text/javascript"></script>

                <!-- Js plugins included in this file
                ========================================================= -->
                <script src="/js/plugins.js"></script>

                <!-- Video Player JS
                ========================================================= -->
                <script src="/js/jquery.mb.YTPlayer.js"></script>

                <!-- Mail Chimp JS
                        ========================================================= -->
                <script src="js/jquery.ajaxchimp.min.js"></script>
                <!-- styleSwitch JS
                ========================================================= -->
                <script src="/js/styleswitch.js"></script>

                <!-- Waypoint Js
                ========================================================= -->
                <script src="/js/waypoints.min.js"></script>

                <!-- Main js file contents all jQuery plugins activation
                ========================================================= -->
                <script src="/js/main.js"></script>

                <script type="text/javascript" src="/js/core.min.js"></script>
                <script type="text/javascript" src="/js/popup.min.js"></script>
                <script type="text/javascript" src="/js/newJobs.js"></script>
                <!-- 在页面加载的时候，调用指定的方法 -->
                <script>
                    window.onload = function () {
                        hotJobs();
                    }
                </script>

</body>
</html>

