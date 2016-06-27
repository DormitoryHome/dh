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
    <c:if test="${requestScope.error=='user' || requestScope.error=='check'}">
        <meta http-equiv="refresh" content="1;url=${pageContext.request.contextPath}/login"/>
    </c:if>
    <c:if test="${requestScope.error=='registerUser' || requestScope.error=='registerCheck'}">
        <meta http-equiv="refresh" content="1;url=${pageContext.request.contextPath}/register"/>
    </c:if>

    <title></title>
</head>
<body>
<c:if test="${requestScope.error=='user'}">
    <h3 style="margin-top: 100px;text-align: center;color: red">对不起，用户名或密码有误！！请重新登录！自动跳到登录页面</h3>
</c:if>
<c:if test="${requestScope.error=='check'}">
    <h3 style="margin-top: 100px;text-align: center;color: red">对不起，验证码有误！！请重新登录！自动跳到登录页面</h3>
</c:if>
<c:if test="${requestScope.error=='registerUser'}">
    <h3 style="margin-top: 100px;text-align: center;color: red">对不起，用户名已存在！！请重新注册！自动跳到注册页面</h3>
</c:if>
<c:if test="${requestScope.error=='registerCheck'}">
    <h3 style="margin-top: 100px;text-align: center;color: red">对不起，验证码有误！！请重新注册！自动跳到注册页面</h3>
</c:if>
</body>
</html>

