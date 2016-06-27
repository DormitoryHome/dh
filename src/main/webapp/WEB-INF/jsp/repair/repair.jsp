<%-- 
  Date: 2016/06/25
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>维修</title>
    <link href="${pageContext.request.contextPath}/css/login.css" rel="stylesheet" type="text/css"/>
    <link href="${pageContext.request.contextPath}/css/style.css" type="text/css" rel="stylesheet">
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.0.0.min.js"></script>
    <script>
        $(document).ready(function () {
            $("form :input").blur(function () {
                var $parent = $(this).parent();
                $parent.find(".formTips").remove();
                if ($(this).is('#name')) {
                    if (this.value == "") {
                        $parent.append("<span class='formTips onError'>请输入姓名</span>");
                    } else {
                    }
                }
                if ($(this).is('#problem')) {
                    if (this.value == "") {
                        $parent.append("<span class='formTips onError'>请输入问题描述</span>");
                    }
                }

                if ($(this).is('#address')) {
                    if (this.value == "") {
                        $parent.append("<span class='formTips onError'>清输入地址</span>");
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
    </script>
</head>

<body>
<%@include file="../common/Title.jsp"%>
<%@ include file="../common/Navigate.jsp"%>
<div id="title"><h2>维修单</h2></div>
<div class="box1">
    <form id="form1"  name="form1" method="post" action="${pageContext.request.contextPath}/action/repair">
        <div>
            <span style="width:100px;text-align:right;display: inline-block;">姓名：</span>
            <input type="text" name="name" id="name" class="required" style="width:300px; height:20px;"/>
        </div>
        <div>
            <span style="width:100px;text-align:right;display: inline-block; margin: auto">问题描述：</span>
            <textarea name="problem" id="problem" class="required" style="width:300px; height:100px;"></textarea>
        </div>
        <div>
            <span style="width:100px;text-align:right;display: inline-block;">地址：</span>
            <input type="text" name="address" id="address" class="required" style="width:300px; height:20px;"/>
        </div>
        <div style="text-align: center"><input id="registerForm" type="submit" value="提交"></div>
    </form>
</div>

</body>
</html>



