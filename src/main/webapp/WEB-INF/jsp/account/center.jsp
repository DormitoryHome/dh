<%@ page import="com.dh.domain.Account" %>
<%@ page import="com.dh.service.AccountService" %>
<%@ page import="com.dh.domain.Repair" %>
<%@ page import="java.util.List" %>
<%@ page import="com.dh.service.RepairService" %><%--
  Date: 2016/06/26
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <link href="${pageContext.request.contextPath}/css/UserCenter.css" rel="stylesheet" type="text/css">
    <link href="${pageContext.request.contextPath}/css/style.css" type="text/css" rel="stylesheet">

</head>
<body>
<%
    Account account = (Account) request.getSession().getAttribute("account");
    RepairService repairService = new RepairService();
    List<Repair> repairList = repairService.getRepairList(account.getUID());
%>
<%@ include file="../common/Title.jsp"%>
<%@ include file="../common/Navigate.jsp"%>
<div class="UserCenter">
    <div>
        <label>用户信息</label>
        <div>
            <table class="UserDetail">
                <tr>
                    <td>用户名</td>
                    <td><%= account.getUsername()%></td>
                </tr>
                <tr>
                    <td>邮箱</td>
                    <td><%= account.getEmail()%></td>
                </tr>
            </table>
        </div>
    </div>
    <div>
        <label>维修单</label>
        <div>
            <table class="RepairDetail">
                <tr>
                    <td>委托人姓名</td>
                    <td>问题</td>
                    <td>地址</td>
                    <td>解决状态</td>
                </tr>
                <% for (int i = 0; i < repairList.size(); i++) { %>
                <tr>
                    <td><%= repairList.get(i).getName()%></td>
                    <td><%= repairList.get(i).getProblem()%></td>
                    <td><%= repairList.get(i).getAddress()%></td>
                    <td><%= repairList.get(i).getStatus()%></td>
                </tr>
                <% } %>
            </table>
        </div>
    </div>
    <div>
        <label>订单</label>
    </div>
</div>

</body>
</html>

