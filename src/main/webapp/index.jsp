<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>宿舍之家</title>
    <link href="${pageContext.request.contextPath}/css/style.css" type="text/css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/ScrollPhoto.css" type="text/css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/SpryTabbedPanels.css" rel="stylesheet" type="text/css"/>
    <script src="${pageContext.request.contextPath}/js/SpryTabbedPanels.js" type="text/javascript"></script>
    <%--<link href="${pageContext.request.contextPath}/css/AllSort.css" type="text/css" rel="stylesheet">--%>
    <script src="${pageContext.request.contextPath}/js/jquery-3.0.0.min.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/js/ScrollPhoto.js" type="text/javascript"></script>
    <script>
        $(document).ready(function () {
            $("li.HaveSub").mouseenter(function () {
                $("div.SubSort").hide();
                $(this).children("div.SubSort").show();
            });
            $("li.HaveSub").mouseleave(function () {
                $(this).children("div.SubSort").hide();
            });
        });
    </script>
</head>
<body>
<%@ include file="WEB-INF/jsp/common/Title.jsp" %>
<%@ include file="WEB-INF/jsp/common/Navigate.jsp" %>
<div class="allDiv">
    <div class="AllSort">
        <ul>

            <li class="HaveSub">
                <a href="#">食品小吃</a>

                <div class="SubSort" hidden="hidden">
                    <ul>
                        <a href="<%=request.getContextPath() + "/item?category=11"%>">
                            <li>薯片</li>
                        </a>
                        <a href="<%=request.getContextPath() + "/item?category=12"%>">
                            <li>巧克力</li>
                        </a>
                        <a href="<%=request.getContextPath() + "/item?category=13"%>">
                            <li>方便面</li>
                        </a>
                        <a href="<%=request.getContextPath() + "/item?category=14"%>">
                            <li>火腿肠</li>
                        </a>
                        <a href="<%=request.getContextPath() + "/item?category=15"%>">
                            <li>饼干</li>
                        </a>
                    </ul>
                </div>
            </li>

            <li class="HaveSub">
                <a href="#">饮品奶类</a>

                <div class="SubSort" hidden="hidden">
                    <ul>
                        <a href="<%=request.getContextPath() + "/item?category=21"%>">
                            <li>牛奶</li>
                        </a>
                        <a href="<%=request.getContextPath() + "/item?category=22"%>">
                            <li>饮料</li>
                        </a>
                        <a href="<%=request.getContextPath() + "/item?category=23"%>">
                            <li>咖啡奶茶</li>
                        </a>
                        <a href="<%=request.getContextPath() + "/item?category=24"%>">
                            <li>饮用水</li>
                        </a>
                    </ul>
                </div>
            </li>

            <li class="HaveSub">
                <a href="#">个人护理</a>

                <div class="SubSort" hidden="hidden">
                    <ul>
                        <a href="<%=request.getContextPath() + "/item?category=31"%>">
                            <li>洗发水</li>
                        </a>
                        <a href="<%=request.getContextPath() + "/item?category=32"%>">
                            <li>沐浴露</li>
                        </a>
                        <a href="<%=request.getContextPath() + "/item?category=33"%>">
                            <li>肥皂</li>
                        </a>
                        <a href="<%=request.getContextPath() + "/item?category=34"%>">
                            <li>牙膏</li>
                        </a>
                        <a href="<%=request.getContextPath() + "/item?category=35"%>">
                            <li>牙刷</li>
                        </a>
                        <a href="<%=request.getContextPath() + "/item?category=36"%>">
                            <li>洁面乳</li>
                        </a>
                    </ul>
                </div>
            </li>

            <li class="HaveSub">
                <a href="#">学习用品</a>

                <div class="SubSort" hidden="hidden">
                    <ul>
                        <a href="<%=request.getContextPath() + "/item?category=41"%>">
                            <li>签字笔</li>
                        </a>
                        <a href="<%=request.getContextPath() + "/item?category=42"%>">
                            <li>圆珠笔</li>
                        </a>
                        <a href="<%=request.getContextPath() + "/item?category=43"%>">
                            <li>铅笔</li>
                        </a>
                        <a href="<%=request.getContextPath() + "/item?category=44"%>">
                            <li>橡皮擦</li>
                        </a>
                        <a href="<%=request.getContextPath() + "/item?category=45"%>">
                            <li>尺子</li>
                        </a>
                        <a href="<%=request.getContextPath() + "/item?category=46"%>">
                            <li>笔袋</li>
                        </a>
                    </ul>
                </div>
            </li>

            <li class="HaveSub">
                <a href="#">手机电脑配件</a>

                <div class="SubSort" hidden="hidden">
                    <ul>
                        <a href="<%=request.getContextPath() + "/item?category=51"%>">
                            <li>耳机</li>
                        </a>
                        <a href="<%=request.getContextPath() + "/item?category=52"%>">
                            <li>移动电源</li>
                        </a>
                        <a href="<%=request.getContextPath() + "/item?category=53"%>">
                            <li>手机外壳</li>
                        </a>
                    </ul>
                </div>
            </li>

        </ul>
    </div>
    <%@ include file="WEB-INF/jsp/common/ScrollPhoto.jsp" %>
</div>
<%@ include file="WEB-INF/jsp/common/right.jsp" %>
</body>
</html>

