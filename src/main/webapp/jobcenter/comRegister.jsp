<%--
  Created by IntelliJ IDEA.
  User: Ran
  Date: 2019/6/10
  Time: 22:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>邮箱注册</title>
    <link href="/css/css_register.css" rel="stylesheet">
    <script src = "/js/register.js"></script>
    <script src="/js/getVerificationCode.js"></script>
</head>
<body>
<div id = "nav">
    <div class="nav_img">
        <a href="${pageContext.request.contextPath}/jobcenter/index.jsp"><img src="/images/logo.png"></a>
    </div>
</div>

<div id = "register">
    <div id = "register_left">
        <div class="register_left_r1">

            <a href="${pageContext.request.contextPath}/jobcenter/comRegister.jsp">企业注册</a>
        </div>

        <div class="register_left_r2">
            <form>
                <span class="registerMessage" id="registerMsg"></span>
                <input type="text" placeholder="请输入公司邮箱" class="registerMailAndPwd" id="registerId" name="stuPhone" onblur="registerMail()" style="height: 35px;width: 300px;margin-top: 30px;margin-left: 70px;"/>
                <span class="registerMailMsg" style="display: block;font-size: 2px;color: red;margin-left: 70px;"></span>
                <input type="password" placeholder="请输入密码" class="registerTelAndPwd" id = "registerPwd" name="stuPwd" onblur="registerPassword()"/>
                <span class="registerPwdMsg"></span>
                <%/*
                <input type="text" placeholder="请输入邮箱验证码" class="identifyingCode" id="registerIdentifyingCode"/>
                <button type="button" class="getIdentifyingCode" onclick="getVerificationCode()"><span id="code">获取邮箱验证码</span></button>
                <span class="registerIdentifyingCodeMsg"></span>
                */%>
                <div class="agreement">
                    <div class="agreement_one" onblur="stuCheckBox()"><input type="checkbox" class="agreement_agree"><label> 我已阅读并同意</label></div>
                    <div class="agreement_check"><a href=""><pre>《就业中心服务协议》</pre></a></div>
                    <span class="agreementMsg"></span>
                </div>
                <button type="button" class="register" onclick="comRegister()"><span>注册</span></button>
            </form>
        </div>
    </div>

    <div class="slice"></div>

    <div id = "register_right">
        <div class="register_right_r1">
            <span>已有账号? 直接 <a href="${pageContext.request.contextPath}/jobcenter/comLogin.jsp">登录</a></span>
        </div>

        <div class="register_right_r2">
            <div class="register_right_r2_Ba">
                <span>已使用第三方账号登录</span>
            </div>
            <div class="register_right_r2_Bb">
                <ul>
                    <li><a href=""><img src="/images/4.jpg"/></a></li>
                    <li><a href=""><img src="/images/5.jpg"/></a></li>
                    <li><a href=""><img src="/images/6.jpg"/></a></li>
                </ul>
            </div>
        </div>
    </div>
</div>
</body>
</html>
