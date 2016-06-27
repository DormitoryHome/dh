<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.dh.service.ItemService" %>
<%@ page import="com.dh.domain.Item" %>
<%@ page import="java.util.List" %>
<%--
  Date: 2016/06/22
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

    <title>商品展示</title>
    <%--<link href="${pageContext.request.contextPath}/css/item.css" type="text/css" rel="stylesheet">--%>
    <link href="${pageContext.request.contextPath}/css/style.css" type="text/css" rel="stylesheet">
    <script src="${pageContext.request.contextPath}/js/jquery-3.0.0.min.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/js/item.js" type="text/javascript"></script>

</head>

<body>
<%
    ItemService itemService = new ItemService();
    List<Item> itemList;
    String category = request.getParameter("category");
    String itemname = request.getParameter("itemname");
    if (category == null) {
        if (itemname == null) {
            itemList = itemService.getItemList();
        }
        else
            itemList = itemService.getItemByName(itemname);
    } else {
        itemList = itemService.getItemListByType(category);
    }
%>
<%@include file="../common/Title.jsp"%>
<%@ include file="../common/Navigate.jsp"%>
<div id="middle">
    <div id="leftclassification">
        <ul id="" class="classification"><p>食品小吃</p>
            <li><a href="<%=request.getContextPath() + "/item?category=11"%>"><h4>薯片</h4></a></li>
            <li><a href="<%=request.getContextPath() + "/item?category=12"%>"><h4>巧克力</h4></a></li>
            <li><a href="<%=request.getContextPath() + "/item?category=13"%>"><h4>方便面</h4></a></li>
            <li><a href="<%=request.getContextPath() + "/item?category=14"%>"><h4>火腿肠</h4></a></li>
            <li><a href="<%=request.getContextPath() + "/item?category=15"%>"><h4>饼干</h4></a></li>
        </ul>
        <ul id="" class="classification"><p>饮品奶类</p>
            <li><a href="<%=request.getContextPath() + "/item?category=21"%>"><h4>牛奶</h4></a></li>
            <li><a href="<%=request.getContextPath() + "/item?category=22"%>"><h4>饮料</h4></a></li>
            <li><a href="<%=request.getContextPath() + "/item?category=23"%>"><h4>咖啡奶茶</h4></a></li>
            <li><a href="<%=request.getContextPath() + "/item?category=24"%>"><h4>饮用水</h4></a></li>
        </ul>
        <ul id="" class="classification"><p>个人护理</p>
            <li><a href="<%=request.getContextPath() + "/item?category=31"%>"><h4>洗发水</h4></a></li>
            <li><a href="<%=request.getContextPath() + "/item?category=32"%>"><h4>沐浴露</h4></a></li>
            <li><a href="<%=request.getContextPath() + "/item?category=33"%>"><h4>肥皂</h4></a></li>
            <li><a href="<%=request.getContextPath() + "/item?category=34"%>"><h4>牙膏</h4></a></li>
            <li><a href="<%=request.getContextPath() + "/item?category=35"%>"><h4>牙刷</h4></a></li>
            <li><a href="<%=request.getContextPath() + "/item?category=36"%>"><h4>洁面乳</h4></a></li>
        </ul>
        <ul id="" class="classification"><p>学习用品</p>
            <li><a href="<%=request.getContextPath() + "/item?category=41"%>"><h4>签字笔</h4></a></li>
            <li><a href="<%=request.getContextPath() + "/item?category=42"%>"><h4>圆珠笔</h4></a></li>
            <li><a href="<%=request.getContextPath() + "/item?category=43"%>"><h4>铅笔</h4></a></li>
            <li><a href="<%=request.getContextPath() + "/item?category=44"%>"><h4>橡皮擦</h4></a></li>
            <li><a href="<%=request.getContextPath() + "/item?category=45"%>"><h4>尺子</h4></a></li>
            <li><a href="<%=request.getContextPath() + "/item?category=46"%>"><h4>笔袋</h4></a></li>
        </ul>
        <ul id="" class="classification"><p>手机电脑配件</p>
            <li><a href="<%=request.getContextPath() + "/item?category=51"%>"><h4>耳机</h4></a></li>
            <li><a href="<%=request.getContextPath() + "/item?category=52"%>"><h4>移动电源</h4></a></li>
            <li><a href="<%=request.getContextPath() + "/item?category=53"%>"><h4>手机外壳</h4></a></li>
        </ul>
    </div>
    <div id="show" class="">

        <% for (int i = 0; i < itemList.size(); i++) { %>

        <div class="levelchild">
            <div class="images">
                <img src="<%= request.getContextPath() + itemList.get(i).getImg()%>"
                     style="max-height: 90%; max-width: 80%; margin-top: 10px;"/>
            </div>
            <div class="details">
                <p><%= itemList.get(i).getName()%>
                </p>

                <p style="word-break: break-all"><%= itemList.get(i).getBrief()%>
                </p>
                <span id="price">￥<%= itemList.get(i).getPrice()%></span><br/>
                <c:if test="${sessionScope.account==null}">
                    <a href="${pageContext.request.contextPath}/login"><input type="button" value="加入购物车" id="buy"
                              style="background:#FACC2E;color:black; border-radius:5px;"/></a>
                </c:if>
                <c:if test="${sessionScope.account!=null}">
                    <a href="${pageContext.request.contextPath}/action/cart?item=<%=itemList.get(i).getUID()%>&quantity=1"><input type="button" value="加入购物车" id="buy"
                              style="background:#FACC2E;color:black; border-radius:5px;"/></a>
                </c:if>

            </div>
        </div>
        <% } %>


    </div>
</div>


</body>
</html>
