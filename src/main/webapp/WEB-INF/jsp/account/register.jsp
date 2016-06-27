<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>用户注册</title>
    <%--<link href="${pageContext.request.contextPath}/css/login.css" rel="stylesheet" type="text/css"/>--%>
    <link href="${pageContext.request.contextPath}/css/style.css" type="text/css" rel="stylesheet">
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.0.0.min.js"></script>
    <script>
        $(document).ready(function () {
            $("form :input").blur(function () {
                var $parent = $(this).parent();
                $parent.find(".formTips").remove();
                if ($(this).is('#username')) {
                    if (this.value == "") {
                        $parent.append("<span class='formTips onError'>请输入用户名</span>");
                    } else {
                    }
                }
                if ($(this).is('#password')) {
                    if (this.value == "") {
                        $parent.append("<span class='formTips onError'>请输入密码</span>");
                    }
                }

                if ($(this).is('#confirmPwd')) {
                    if (this.value == "") {
                        $parent.append("<span class='formTips onError'>清再次输入密码</span>");
                    }
                    else if (this.value != $('#password').val()) {
                        $parent.append("<span class='formTips onError'>两次密码不一致</span>");
                    }
                }

                if ($(this).is('#email')) {
                    if (this.value == "") {
                        $parent.append("<span class='formTips onError'>请输入邮箱</span>");
                    } else if (/^([\w-]+(\.[\w-]+)*@[\w-]+\.[\w-]+)$/.test(this.value)) {
                    } else {
                        $parent.append("<span class='formTips onError'>邮箱格式不正确</span>");
                    }
                }
            });
            $('#registerForm').click(function () {
                $("form :input.required").trigger('blur');
                var numError = $('form .onError').length;
                if (numError) {
                    return false;
                }

            });
        })
        function changeImg() {
            document.getElementById("validateCodeImg").src = "${pageContext.request.contextPath}/action/DrawImage?" + Math.random();
        }
    </script>
</head>

<body>

<div id="title"><h2>注册</h2></div>
<div class="box">
    <form id="form1" name="form1" method="post" action="${pageContext.request.contextPath}/action/register">

        <div>
            <span style="width:100px;text-align:right;display: inline-block;">用户名：</span>
            <input type="text" name="username" id="username" class="required" style="width:150px; height:20px;"/>
        </div>
        <div>
            <span style="width:100px;text-align:right;display: inline-block;">密码：</span>
            <input type="password" name="password" id="password" class="required" style="width:150px; height:20px;"/>
        </div>
        <div>
            <span style="width:100px;text-align:right;display: inline-block;">确认密码：</span>
            <input type="password" name="confirmPwd" id="confirmPwd" class="required" style="width:150px; height:20px;"/>
        </div>
        <div>
            <span style="width:100px;text-align:right;display: inline-block;">邮箱：</span>
            <input type="text" name="email" id="email" class="required" style="width:150px; height:20px;"/>
        </div>
        <div>
            <span style="width:100px;text-align:right;display: inline-block;">验证码：</span>
            <input type="text" name="yanzhengma" class="required" id="yangzhengma"
                   style="text-transform: uppercase; width:150px; height:20px;"
                   onkeyup="this.value = this.value.toUpperCase();"/>

            <div id="yangzhengmatu">
                <img src="${pageContext.request.contextPath}/action/DrawImage" width="80px" height="30px"
                     id="validateCodeImg"
                     onclick="changeImg()"/>
            </div>
        </div>

        <div style="text-align: center"><input id="registerForm" type="submit" value="注册"></div>

    </form>
</div>
</body>
</html>


