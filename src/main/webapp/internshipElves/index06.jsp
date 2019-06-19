<%--
  Created by IntelliJ IDEA.
  User: xingdong
  Date: 2018/10/15
  Time: 20:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    </script><script type="text/javascript" async="" src="/js/conversion.js"></script><script src="/js/allmobilize.min.js" charset="utf-8" id="allmobilize"></script><style type="text/css"></style>
    <meta content="no-siteapp" http-equiv="Cache-Control">
    <link  media="handheld" rel="alternate">
    <!-- end 云适配 -->
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
    <title>就业服务中心-最专业的互联网招聘平台</title>

    <link href="/css/style.css" type="text/css" rel="stylesheet">
    <link href="/css/external.min.css" type="text/css" rel="stylesheet">
    <link href="/css/popup.css" type="text/css" rel="stylesheet">
    <script type="text/javascript" src="/js/jquery.1.10.1.min.js"></script>
    <script src="/js/jquery.lib.min.js" type="text/javascript"></script>
    <script type="text/javascript" src="/js/ajaxfileupload.js"></script>
    <script src="/js/additional-methods.js" type="text/javascript"></script>
    <!--[if lte IE 8]>
    <script type="text/javascript" src="/js/excanvas.js"></script>
    <![endif]-->
    <script type="text/javascript">
        var youdao_conv_id = 271546;
    </script>
    <script src="/js/conv.js" type="text/javascript"></script>
    <script src="/js/ajaxCross.json" charset="UTF-8"></script></head>
<body><script src="http://tajs.qq.com/jiathis.php?uid=1626433&amp;dm=www.lagou.com" charset="utf-8"></script><link href="/css/jiathis_share.css" rel="stylesheet" type="text/css"><iframe frameborder="0" style="position: fixed; display: none; opacity: 0;"></iframe><div class="jiathis_style" style="position: absolute; z-index: 1000000000; display: none; top: 50%; left: 50%; overflow: auto;"></div><div class="jiathis_style" style="position: absolute; z-index: 1000000000; display: none; overflow: auto;"></div><iframe frameborder="0" style="display: none;" src="http://v3.jiathis.com/code_mini/jiathis_utility.html"></iframe>
<div id="body">
    <div id="header">
        <div class="wrapper">
            <a class="logo" href="${pageContext.request.contextPath}/internshipElves/index.jsp">
                <img width="229" height="43" alt="就业服务中心" src="/images/logo.png">
            </a>
            <ul id="navheader" class="reset">
                <li><a href="${pageContext.request.contextPath}/internshipElves/index.jsp">首页</a></li>
                <li><a target="_blank" href="${pageContext.request.contextPath}/internshipElves/companyList.jsp">公司</a></li>
                <li><a rel="nofollow" href="${pageContext.request.contextPath}/internshipElves/myhome2.jsp">企业中心</a></li>
            </ul>
            <dl class="collapsible_menu">
                <dt>
                    <span><a href="${pageContext.request.contextPath}/comLogin/logout" style="color: lightcyan">退出</a></span>
                </dt>
            </dl>
        </div>
    </div>

    <div id="container">

        <div class="sidebar">
            <a class="btn_create" href="${pageContext.request.contextPath}/internshipElves/releaseJob.jsp">发布新职位</a>
            <dl class="company_center_aside">
                <dt>我收到的简历</dt>
                <dd>
                    <a href="${pageContext.request.contextPath}/internshipElves/pending.jsp">待查看简历</a>
                    <span></span>
                </dd>
                <dd>
                    <a href="${pageContext.request.contextPath}/internshipElves/pending.jsp">待定简历</a>
                </dd>
                <dd>
                    <a href="${pageContext.request.contextPath}/internshipElves/pending.jsp">已通知面试简历</a>
                </dd>
                <dd>
                    <a href="${pageContext.request.contextPath}/internshipElves/pending.jsp">不合适简历</a>
                </dd>
                <dd class="btm">
                    <a href="${pageContext.request.contextPath}/internshipElves/pending.jsp">自动过滤简历</a>
                    <span></span>
                </dd>
            </dl>
            <dl class="company_center_aside">
                <dt>我发布的职位</dt>
                <dd>
                    <a href="${pageContext.request.contextPath}/internshipElves/positions.jsp">有效职位</a>
                </dd>
                <dd>
                    <a href="${pageContext.request.contextPath}/internshipElves/positions.jsp">已下线职位</a>
                </dd>
                <script >
                    var comasides =document.getElementById("comaside").children;
                    var handlemethds = document.getElementById("handlemethd").children ;//li
                    for(var i =1;i<6;i++){
                        handlemethds[i].index = i;
                        handlemethds[i].onclick = function () {
                            for(var i1=1;i1<6;i1++){
                                handlemethds[i1].className="";
                            } for (var ii1=1;ii1<3;ii1++){
                                comasides[ii1].className="";
                            }
                            handlemethds[this.index].className="current";
                            var tag = this.index;
                            loadResumes(tag);
                        }
                    }
                    for (var ii=1 ;ii<3;ii++){
                        comasides[ii].index =ii;
                        comasides[ii].onclick =function () {
                            for (var ii1=1;ii1<3;ii1++){
                                comasides[ii1].className="";
                            } for(var i1=1;i1<6;i1++){
                                handlemethds[i1].className="";
                            }
                            comasides[this.index].className="current";
                        }
                    }
                </script>
            </dl>
            <div class="content" >
                <dl class="company_center_content">
                    <dt id="Resumetype">

                    </dt>
                    <dd>
                        <form action="canInterviewResumes.html" method="get" id="filterForm">
                            <div class="filter_actions">

                            </div>
                            <div class="filter_options  dn " style="display: none;">

                                <input type="hidden" value="0" name="filterStatus" id="filterStatus">
                                <input type="hidden" value="" name="positionId" id="positionId">
                            </div><!-- end .filter_options -->
                            <ul class="reset resumeLists" id="resumeLists">

                            </ul><!-- end .resumeLists -->
                        </form>
                    </dd>
                </dl><!-- end .company_center_content -->
            </div><!-- end .content -->
            <script>
                var url_pending = '${pageContext.request.contextPath}/company/loadResume';
                window.onload=function() {
                    loadResumes (1);
                }
                function loadResumes(tag) {
                    if (window.XMLHttpRequest) {
                        xhr = new XMLHttpRequest();
                    } else {
                        xhr = new ActiveXObject('Microsoft.XMLHTTP');
                    }
                    var deliverResumeStatus ="deliverResumeStatus="+tag;
                    xhr.open("POST", url_pending,true);
                    xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded;charset=utf-8");
                    xhr.onreadystatechange = loadHandles;
                    xhr.send(deliverResumeStatus);
                }
                function loadHandles() {
                    if (xhr.readyState == 4 && xhr.status == 200) {
                        var result = JSON.parse(xhr.responseText);
                        var resumeList = document.getElementById("resumeLists");
                        var resumeTitle = document.getElementById("Resumetype");
                        var handlemethds = document.getElementById("handlemethd").children;//li
                        for (var j = 1; j < 6; j++) {
                            if (handlemethds[j].className == "current")
                                resumeTitle.innerHTML = '<h1><em></em>' + handlemethds[j].innerText + '</h1>';
                        }
                        resumeList.innerHTML = "";
                        for (var i = 0; i < result.length; i++) {
                            var date = strFormat(result[i].deliverResumeTime);
                            resumeList.innerHTML += ( '<li data-id="1686182" class="onlineResume"> <div class="resumeShow">' +
                                '<a title="预览在线简历" target="_blank" class="resumeImg" href="#">' +
                                '<img src="'+result[i].stuProfile+'"> </a> <div class="resumeIntro">' +
                                '<h3 class="unread"><a target="_blank" title="预览jason的简历" href="">' +
                                result[i].stuName + "的简历" + ' </a><em></em></h3><span class="fr">' +
                                "投递时间：" + date + '</span><div>' + result[i].stuName + " / " + result[i].stuGender + " / " +
                                "应届毕业生 / " + result[i].stuAddr + '<br>' + result[i].stuDegree + " · " + result[i].stuSchool +
                                '</div><div class="jdpublisher"><span>' + "应聘职位：" +
                                '<a title="result[i].jobName" target="_blank" href="">' +
                                result[i].jobName + '</a></span></div></div><div class="links" >' +
                                '<a href="javascript:void(0)" name="'+result[i].deliverResumeId+'" onclick="handleL(this)">'+
                                "待处理"+'</a>'+
                                '<a href="javascript:void(0)" name="'+result[i].deliverResumeId+'" onclick="handleL(this)">' +
                                "待定" + '</a><a href="javascript:void(0)" name="'+result[i].deliverResumeId+'" onclick="handleL(this)">' +
                                "通知面试" + '</a><a href="javascript:void(0)" name="'+result[i].deliverResumeId+'" onclick="handleL(this)">' +
                                "不合适" + ' </a></div></div> <div class="contactInfo"><span class="c9">' +
                                "电话：" + ' </span>' + result[i].stuTel + '&nbsp;&nbsp;&nbsp;<span class="c9">' +
                                "邮箱:" + '</span><a href="mailto:888888888@qq.com">' + result[i].stuEmail +
                                '</a></div>');
                        }
                    }
                }
                //时间格式化
                function strFormat(date1){
                    var month=0;
                    var day=0;
                    var date=new Date(date1);
                    if((date.getMonth()+1)>=10)
                    {
                        month=date.getMonth()+1;
                    }else
                    {
                        month="0"+(date.getMonth()+1);
                    }
                    if(date.getDate()>=10)
                    {
                        day=date.getDate();
                    }else {
                        day="0"+date.getDate();
                    }
                    var setDate=date.getFullYear()+"-"+month+"-"+day;
                    return setDate;
                }
                var url_pending_handle = '${pageContext.request.contextPath}/company/updateDResume';
                function handleL(type) {
                    if (window.XMLHttpRequest) {
                        xhr = new XMLHttpRequest();
                    } else {
                        xhr = new ActiveXObject('Microsoft.XMLHTTP');
                    }
                    var tag =1;
                    if(type.innerText=="通知面试"){
                        tag = 4;
                    }
                    if(type.innerText=="不合适"){
                        tag = 5;
                    }
                    if(type.innerText=="待定"){
                        tag = 3;
                    }
                    if(type.innerText=="待处理"){
                        tag = 2;
                    }
                    var deliverResumeId;
                    var deliverResumeStatus ="deliverResumeStatus="+tag;;
                    if (type.name!=null &&type.name!=="")
                        deliverResumeId = "&deliverResumeId="+type.name;
                    else deliverResumeId =1;
                    var date=deliverResumeStatus+deliverResumeId;
                    xhr.open("POST", url_pending_handle,true);
                    xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded;charset=utf-8");
                    xhr.send(date);
                    var handlemethds = document.getElementById("handlemethd").children;//li
                    for (var j = 1; j < 6; j++) {
                        if (handlemethds[j].className == "current")
                            loadResumes(j);
                    }
                }
            </script>

            <div class="subscribe_side mt20">
                <div class="f14">加入互联网HR交流群</div>
                <div class="f18 mb10">跟同行聊聊</div>
                <div class="f24">**********</div>
            </div>            </div><!-- end .sidebar -->
        <div class="content">
            <dl class="company_center_content">
                <dt>
                    <h1>
                        <em></em>
                        发布新职位
                    </h1>
                </dt>
                <dd>
                    <div class="ccc_tr">今日已发布 <span>1</span> 个职位   还可发布 <span>4</span> 个职位</div>
                    <div class="publish_tip">
                        <h2>恭喜你，职位发布成功！</h2>
                        <a target="_blank" href="${pageContext.request.contextPath}/internshipElves/index.jsp">预览职位</a><br>
                        <a class="greylink" href="${pageContext.request.contextPath}/internshipElves/releaseJob.jsp">继续发布新职位</a><br>
                        <a class="greylink" href="${pageContext.request.contextPath}/internshipElves/myhome.jsp"> 进入我的公司主页</a><br>

                    </div>
                    <div class="weixin weixinSuc">
                        <div class="qr">
                            <img width="110" height="110" src="/images/d1f91afa15eb451eaef4d14dcb3b54ec_318969.jpg">
                            <div>[仅限本人使用]</div>
                        </div>
                        <div class="qr_text">
                            <h3>关注微信服务号，可随时获取接收简历的通知 </h3>
                            关注方式：<br>
                            <span>打开微信 </span>  <img width="30" height="30" src="/images/wx1.png"><span> →发现 </span> <img width="31" height="30" src="/images/wx2.png"><span> →扫一扫左侧二维码</span><img width="78" height="29" src="/images/wx3.png">
                        </div>
                    </div>
                </dd>
            </dl>
        </div><!-- end .content -->
        <style>
            .jiathis_style_32x32 .jiathis_txt{font-size:14px!important;text-decoration:underline!important;padding-left:0 !important;}
            .jiathis_style_32x32 .jiathis_separator{margin:0!important; line-height:22px !important;}
            .jiathis_style_32x32 .jtico{height:auto !important;background:none;line-height:22px !important;padding-left:0 !important;}
        </style>
        <script type="text/javascript">
            var jiathis_config={summary:"【公司名称随便写招聘随便写】我们公司正在招聘随便写，月薪1k-2k，如果你对这个职位感兴趣，请进入就业服务详情页投递简历。",boldNum:6,title:"#就业服务中心热招职位#",url:"http://www.baidu.com",hideMore:!0,appkey:{tsina:"3761453225"},pic:"",evt:{share:""}};
            popQR();
            function popQR(){
                $.ajax({
                    url:ctx+"/mycenter/showQRCode",
                    type:"GET"
                }).done(function(data){
                    if(data.success){
                        $('.weixinSuc .qr img').attr("src",data.content);
                        $('.weixinSuc').removeClass('dn');
                    }
                });
            }
        </script>
        <script charset="utf-8" src="/js/jia.js" type="text/javascript"></script>
        <div class="clear"></div>
        <input type="hidden" value="e0b2bdfab8ab466cb973d5ee5acc6adb" id="resubmitToken">
        <a rel="nofollow" title="回到顶部" id="backtop"></a>
    </div><!-- end #container -->

    <div id="footer">
        <div class="wrapper">
            <a rel="nofollow" target="_blank" href=#">联系我们</a>
            <a target="_blank" href="#">互联网公司导航</a>
            <a rel="nofollow" target="_blank" href="#">就业服务中心微博</a>
            <div class="copyright">©2018-2019 internshipElves <a href="#" target="_blank">京ICP备18023790号-2</a></div>
        </div>
    </div>
</div><!-- end #body -->


<script src="/js/core.min.js" type="text/javascript"></script>
<script src="/js/popup.min.js" type="text/javascript"></script>

<!--  -->

<script type="text/javascript">
    $(function(){
        $('#noticeDot-1').hide();
        $('#noticeTip a.closeNT').click(function(){
            $(this).parent().hide();
        });
    });
    var index = Math.floor(Math.random() * 2);
    var ipArray = new Array('42.62.79.226','42.62.79.227');
    var url = "ws://" + ipArray[index] + ":18080/wsServlet?code=314873";
    var CallCenter = {
        init:function(url){
            var _websocket = new WebSocket(url);
            _websocket.onopen = function(evt) {
                console.log("Connected to WebSocket server.");
            };
            _websocket.onclose = function(evt) {
                console.log("Disconnected");
            };
            _websocket.onmessage = function(evt) {
                //alert(evt.data);
                var notice = jQuery.parseJSON(evt.data);
                if(notice.status[0] == 0){
                    $('#noticeDot-0').hide();
                    $('#noticeTip').hide();
                    $('#noticeNo').text('').show().parent('a').attr('href',ctx+'/mycenter/delivery.html');
                    $('#noticeNoPage').text('').show().parent('a').attr('href',ctx+'/mycenter/delivery.html');
                }else{
                    $('#noticeDot-0').show();
                    $('#noticeTip strong').text(notice.status[0]);
                    $('#noticeTip').show();
                    $('#noticeNo').text('('+notice.status[0]+')').show().parent('a').attr('href',ctx+'/mycenter/delivery.html');
                    $('#noticeNoPage').text(' ('+notice.status[0]+')').show().parent('a').attr('href',ctx+'/mycenter/delivery.html');
                }
                $('#noticeDot-1').hide();
            };
            _websocket.onerror = function(evt) {
                console.log('Error occured: ' + evt);
            };
        }
    };
    CallCenter.init(url);
</script>

<div id="cboxOverlay" style="display: none;"></div><div id="colorbox" class="" role="dialog" tabindex="-1" style="display: none;"><div id="cboxWrapper"><div><div id="cboxTopLeft" style="float: left;"></div><div id="cboxTopCenter" style="float: left;"></div><div id="cboxTopRight" style="float: left;"></div></div><div style="clear: left;"><div id="cboxMiddleLeft" style="float: left;"></div><div id="cboxContent" style="float: left;"><div id="cboxTitle" style="float: left;"></div><div id="cboxCurrent" style="float: left;"></div><button type="button" id="cboxPrevious"></button><button type="button" id="cboxNext"></button><button id="cboxSlideshow"></button><div id="cboxLoadingOverlay" style="float: left;"></div><div id="cboxLoadingGraphic" style="float: left;"></div></div><div id="cboxMiddleRight" style="float: left;"></div></div><div style="clear: left;"><div id="cboxBottomLeft" style="float: left;"></div><div id="cboxBottomCenter" style="float: left;"></div><div id="cboxBottomRight" style="float: left;"></div></div></div><div style="position: absolute; width: 9999px; visibility: hidden; display: none;"></div></div>


</body>
</html>
