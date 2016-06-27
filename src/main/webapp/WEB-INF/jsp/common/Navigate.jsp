<%-- 
  Date: 2016/06/25
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<div class="NavigateBackground">
    <div class="NavigateLimit">
        <ul class="NavigateUList">
            <li><a href="${pageContext.request.contextPath}/item">超市</a></li>
            <li><a href="${pageContext.request.contextPath}/repair">宿舍维修</a></li>
            <li><a href="${pageContext.request.contextPath}/cart">购物车</a></li>
            <li><a href="#">item</a></li>
        </ul>
        <form class="NavigateForm" action="<%=request.getContextPath() + "/item"%>">
            <input type="search" placeholder="输入商品名" name="itemname"/>
            <input type="submit" value="搜索"/>
        </form>
    </div>
</div>




