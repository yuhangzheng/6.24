<%@ page import="com.internshipElves.entity.User" %>
<%@ page import="com.internshipElves.service.UserService" %>
<%@ page import="com.internshipElves.service.impl.UserServiceImpl" %>
<%@ page import="com.internshipElves.dao.UserMapper" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<header>
    <nav class="navbar navbar-default" role="navigation" style="background-color: white">
        <div class="container-fluid" style="margin-left: 10%">
            <div class="navbar-header">
                <a class="navbar-brand" href="/forum">主页</a>
            </div>
            <div>

                <!--向左对齐-->
                <ul class="nav navbar-nav navbar-left">
                    <li <c:if test="${tab.tabNameEn == 'com'}">
                            class="active" </c:if>><a href="/tab/com">公司</a>
                    </li>
                    <li <c:if test="${tab.tabNameEn == 'indiv'}">class="active"
                        </c:if>><a href="/tab/indiv">个人</a></li>
                    <li <c:if test="${tab.tabNameEn == 'seekHelp'}">class="active"
                        </c:if>><a href="/tab/seekHelp">求助</a></li>
                    <li <c:if test="${tab.tabNameEn == 'jobsFair'}">class="active"
                         </c:if>><a href="/tab/jobsFair">招聘会</a></li>
                    <li <c:if test="${tab.tabNameEn == 'others'}">class="active"
                        </c:if>><a href="/tab/others">其他</a></li>

                </ul>
                <c:if test="${!empty stuId}">
                    <c:set var ="userId" value="${stuId}" scope="session"></c:set>
                </c:if>
                <c:if test="${!empty comId}">
                    <c:set var ="userId" value="${comId}" scope="session"></c:set>
                </c:if>
                <c:if test="${!empty adminId}">
                    <c:set var ="userId" value="${adminId}" scope="session"></c:set>
                </c:if>
                <%  UserServiceImpl userService = new UserServiceImpl();
                    int uid = (int) session.getAttribute("userId");
                    User user=userService.getUserById(uid);
                    session.setAttribute("username",user.getUsername());%>
                <c:if test="${empty userId}">
                <!--未登陆-->
                 <ul class="nav navbar-nav navbar-right">
                       <li>
                           <p class="navbar-text"><a href="/signin">登录</a></p>
                       </li>
                       <li>
                               <p class="navbar-text"><a href="/signup">注册</a></p>
                       </li>
                 </ul>
                </c:if>
            <c:if test="${!empty userId}">
                   <!--已登陆-->
                <ul class="nav navbar-nav navbar-right">
                    <li>
                        <p class="navbar-text"><a href="/">回到首页</a></p>
                    </li>
                    <li>
                        <p class="navbar-text"><a href="/member/${user.username}">${user.username}</a></p>
                    </li>
                    <li>
                        <p class="navbar-text"><a href="/settings">设置</a></p>
                    </li>
                    <li>
                        <p class="navbar-text"><a href="javascript:signout_confirm();">登出</a></p>
                    </li>
                </ul>
            </c:if>
            </div>
        </div>
    </nav>


</header>
<script>
    function signout_confirm()
    {
        var r=confirm("确定退出?")
        if (r==true)
        {
            window.location.href="/signout";
        }
        else
        {

        }
    }
</script>