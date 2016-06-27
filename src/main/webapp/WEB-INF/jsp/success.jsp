<%--
  Created by IntelliJ IDEA.
  User: kai
  Date: 2016/06/05
  Time: 15:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <c:if test="${requestScope.success=='register'}">
        <meta http-equiv="refresh" content="1;url=${pageContext.request.contextPath}/index.jsp"/>
    </c:if>
    <c:if test="${requestScope.success=='login'}">
        <meta http-equiv="refresh" content="1;url=${pageContext.request.contextPath}/index.jsp"/>
    </c:if>
    <c:if test="${requestScope.success=='repair'}">
        <meta http-equiv="refresh" content="1;url=${pageContext.request.contextPath}/index.jsp"/>
    </c:if>

    <title></title>
</head>
<body>
<c:if test="${requestScope.success=='register'}">
    <h3 style="margin-top: 100px;text-align: center;color: #1dc62c">注册成功！自动跳到首页</h3>
</c:if>
<c:if test="${requestScope.success=='login'}">
    <h3 style="margin-top: 100px;text-align: center;color: #1dc62c">登录成功！自动跳到首页</h3>
</c:if>
<c:if test="${requestScope.success=='repair'}">
    <h3 style="margin-top: 100px;text-align: center;color: #1dc62c">提交维修单成功！自动跳到首页</h3>
</c:if>

</body>
</html>
