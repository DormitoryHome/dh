<%--
  Created by IntelliJ IDEA.
  User: kai
  Date: 2016/06/01
  Time: 11:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>用户登录</title>
    <link href="${pageContext.request.contextPath}/css/login.css" rel="stylesheet" type="text/css"/>
    <script>
        function changeImg() {
            document.getElementById("validateCodeImg").src = "${pageContext.request.contextPath}/action/DrawImage?" + Math.random();
        }
    </script>
</head>

<body>
<div class="box">
    <form id="form1" name="form1" method="post" action="${pageContext.request.contextPath}/action/login">

        <div id="mentant">
            用户名：
            <input type="text" name="username" id="uname" style="width:150px; height:20px;"/>

            <div id="btn">
                <input type="image" name="imagefile" id="imagefile"
                       src="${pageContext.request.contextPath}/images/Login.gif"/>
            </div>
            <br/>
            密　码：
            <input type="password" name="password" id="upass" style="width:150px; height:20px;"/>
            <br/>
            验证码：
            <input type="text" name="yanzhengma" id="yanzhengma"
                   style="text-transform: uppercase; width:150px; height:20px;"
                   onkeyup="this.value = this.value.toUpperCase();"/>

            <div id="yangzhengmatu">
                <img src="${pageContext.request.contextPath}/action/DrawImage" width="80px" height="30px"
                     id="validateCodeImg"
                     onclick="changeImg()"/>
            </div>
        </div>

    </form>
</div>
</body>
</html>