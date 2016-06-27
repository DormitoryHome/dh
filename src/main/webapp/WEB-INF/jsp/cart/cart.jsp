<%@ page import="com.dh.service.CartService" %>
<%@ page import="com.dh.domain.Item" %>
<%@ page import="com.dh.domain.Cart" %>
<%@ page import="java.util.List" %>
<%@ page import="com.dh.domain.Account" %>
<%@ page import="com.dh.service.ItemService" %><%--
  Date: 2016/06/26
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>购物车</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/cart.css"/>
    <link href="${pageContext.request.contextPath}/css/style.css" type="text/css" rel="stylesheet">
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/cart.js"></script>
</head>
<body>
<%
    CartService cartService = new CartService();
    ItemService itemService = new ItemService();
    List<Cart> cartList;
    Account account = (Account) request.getSession().getAttribute("account");
    cartList = cartService.getCartList(account.getUID());

%>
<%@include file="../common/Title.jsp"%>
<%@ include file="../common/Navigate.jsp"%>

<div class="catbox">
    <div id="log">
        <img src="${pageContext.request.contextPath}/images/by_background.jpg"/></div>
    <table id="cartTable">
        <thead>
        <tr>
            <th><label>
                <input class="check-all check" type="checkbox"/>&nbsp;&nbsp;全选</label></th>
            <th>商品</th>
            <th>单价</th>
            <th>数量</th>
            <th>小计</th>
            <th>操作</th>
        </tr>
        </thead>
        <tbody>
        <% for(int i =0;i<cartList.size();i++) {
            Item item = itemService.getItemByUID(cartList.get(i).getItem_UID());%>

        <tr>
            <td class="checkbox"><input class="check-one check" type="checkbox"/></td>
            <td class="goods"><img src="<%= request.getContextPath() + item.getImg()%>" alt=""/><span><%=item.getName()%></span></td>
            <td class="price"><%=item.getPrice()%></td>
            <td class="count"><span class="reduce">-</span>
                <input class="count-input" type="text" value="1"/>
                <span class="add">+</span></td>
            <td class="subtotal"><%=item.getPrice()%></td>
            <td class="operation"><a href="${pageContext.request.contextPath}/action/delcart?item=<%=item.getUID()%>"><span class="delete">删除</span></a></td>
        </tr>
        <% } %>

        </tbody>
    </table>


    <div class="foot" id="foot">
        <label class="fl select-all"><input type="checkbox" class="check-all check"/>&nbsp;&nbsp;全选</label>
        <a class="fl delete" id="deleteAll" href="javascript:;">删除</a>
        <input type="hidden" id="cartTotalPrice" />
        <div class="fr total">合计：￥<span id="priceTotal">0.00</span></div>
        <div class="fr selected" id="selected">已选商品<span id="selectedTotal">0</span>件<span class="arrow up">︽</span><span class="arrow down">︾</span></div>
        <div class="selected-view">
            <div id="selectedViewList" class="clearfix">
                <div><img src="images/1.jpg"><span>取消选择</span></div>
            </div>
            <span class="arrow">◆<span>◆</span></span> </div>
    </div>
    <div id="pay">
        <a href="${pageContext.request.contextPath}/order"><img src="${pageContext.request.contextPath}/images/by_button2.jpg"/></a>
    </div>
    <div id="goshopping">
        <a href="${pageContext.request.contextPath}/item"><img src="${pageContext.request.contextPath}/images/by_button1.jpg" /></a>
    </div>
</div>

</body>
</html>

