<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <link href="/share/share.css" rel="stylesheet" type="text/css"/>
    <link href="/css/TitleLogin.css" rel="stylesheet" type="text/css">
</head>
<body>

<div class="TitleLogin">
    <a class="TitleLink" href="#">宿舍之家</a>
    <c:if test="${sessionScope.account==null}">
        <div class="LoginStatus">
            <a href="${pageContext.request.contextPath}/login">登录</a>
            <span>|</span>
            <a href="${pageContext.request.contextPath}/register">注册</a>
        </div>
    </c:if>

    <c:if test="${sessionScope.account!=null}">
        <div class="LoginStatus">
            <a href="#">个人中心</a>
            <span>|</span>
            <a href="#">退出登录</a>
        </div>
    </c:if>
</div>
</body>
</html>


