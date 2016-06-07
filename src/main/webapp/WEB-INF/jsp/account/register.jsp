<%--
  Created by IntelliJ IDEA.
  User: kai
  Date: 2016/06/01
  Time: 10:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户注册</title>
    <script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $('#username').blur(function () {

            })
        })
    </script>
</head>

<body style="text-align: center;">
<form action="${pageContext.request.contextPath}/servlet/register" method="post">
    <table width="60%" border="1">
        <tr>
            <td>用户名</td>
            <td>
                <input type="text" name="username" id="username">
            </td>
        </tr>
        <tr>
            <td>密码</td>
            <td>
                <input type="password" name="password">
            </td>
        </tr>
        <tr>
            <td>确认密码</td>
            <td>
                <input type="password" name="confirmPwd">
            </td>
        </tr>
        <tr>
            <td>邮箱</td>
            <td>
                <input type="text" name="email">
            </td>
        </tr>
        <tr>
            <td>
                <input type="reset" value="清空">
            </td>
            <td>
                <input type="submit" value="注册">
            </td>
        </tr>
    </table>
</form>
</body>
</html>