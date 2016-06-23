<%@ page import="com.dh.service.ItemService" %>
<%@ page import="com.dh.domain.Item" %>
<%@ page import="java.util.List" %>
<%--
  Date: 2016/06/22
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>商品</title>
</head>
<body>
<%
    ItemService itemService = new ItemService();
    List<Item> itemList = itemService.getItemListByType("1");
    out.println(itemList.get(0).getPrice());
    out.println(itemList.get(0).getImg());
    out.println("<img src='" + request.getContextPath() + itemList.get(0).getImg() + "' />");
%>
<img src="${pageContext.request.contextPath}">
</body>
</html>
