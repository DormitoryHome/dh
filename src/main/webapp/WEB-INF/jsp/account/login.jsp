<%--
  Created by IntelliJ IDEA.
  User: kai
  Date: 2016/06/01
  Time: 11:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户登录</title>
</head>
<body>
<form action="${pageContext.request.contextPath}/action/login" method="post">
    <div>
        <span>用户名：<input type="text" name="username"></span>
        <span>密码：<input type="password" name="password"></span>
        <input type="submit" value="登录">
    </div>
</form>
</body>
</html>
