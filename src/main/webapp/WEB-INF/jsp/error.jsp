<%--
  Created by IntelliJ IDEA.
  User: kai
  Date: 2016/06/01
  Time: 11:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <meta http-equiv="refresh" content="3;url=${pageContext.request.contextPath}/login"/>
    <title></title>
</head>
<body>
<c:if test="${requestScope.error=='user'}">
    <h3>对不起，用户名或密码有误！！请重新登录！3秒后为您自动跳到登录页面！！</h3>
</c:if>
<c:if test="${requestScope.error=='check'}">
    <h3>对不起，验证码有误！！请重新登录！3秒后为您自动跳到登录页面！！</h3>
</c:if>
</body>
</html>

