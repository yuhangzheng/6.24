<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <style>
        li {list-style-type:none;}
        html, body {
            height: 100%;
            font-size: 15px;
            color: #000000;
            font-family: unset;
            background: #f5f5f5;
        }
        .footer {
            background-color: #647dfa;
            margin-top: 11px;
            margin-bottom: 11px;
            width: 100%;
            padding-top: 22px;
            color: #fafafa;
            display: block;
            height: 120px;
            border: 1px ;
            clear:both
        }

        .container {
            margin-right: 5%;
            margin-left: 5%;
            padding-left: 15px;
            padding-right: 15px;
            width: 50%;

        }
        .info {
            margin-right: 5%;
            width: 10%;
            float: left;
        }
a{
    color: #555;
    cursor: pointer;
}
    </style>
</head>
<body>
<footer class="footer">
    <div class="container">
        <p><a href="${pageContext.request.contextPath}/internshipElves/index.jsp" style="color:white">关于本站</a></p>
        <p>致力于为全校学生及外部企业提供一个高品质、高效率的就业服务平台</p>


    </div>

    <div class="info">
        <p style="text-align: center;font-size: 16px;">友情链接</p>
        <ul >
            <li><a style="color:white" href="github.com">Github</a></li>

        </ul>
    </div>

</footer>
</body>
</html>