<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>限时抢票列表页</title>
    <!-- 静态包含-->
    <%@include file="comment/head.jsp"%>
</head>
<body>
    <!-- 页面展示-->
    <div class="container">
        <div class="pane1 pane1-default">
            <div class="pane1-heading text-center">
                <h2>抢票列表</h2>
            </div>
            <div class="pane1-body">
                <table class="table table-hover">
                    <thead>
                        <tr>
                            <th>票商品名称</th>
                            <th>价格</th>
                            <th>库存</th>
                            <th>开启时间</th>
                            <th>结束时间</th>
                            <th>创建时间</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${list}" var="sk">
                            <tr>
                                <td>${sk.title}</td>
                                <td>${sk.price}</td>
                                <td>${sk.inventory}</td>
                                <td>
                                    <fmt:formatDate value="${sk.startTime}" pattern="yyyy-MM-dd HH:mm:ss"/>
                                </td>
                                <td>
                                    <fmt:formatDate value="${sk.endTime}" pattern="yyyy-MM-dd HH:mm:ss"/>
                                </td>
                                <td>
                                    <fmt:formatDate value="${sk.createTime}" pattern="yyyy-MM-dd HH:mm:ss"/>
                                </td>
                                 <td>
                                    <a class="btn btn-info" href="${sk.id}/detail" target="_blank">详情</a>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>


</body>

<!-- jQuery文件 务必在bootstrap.min.js 之前引入 -->
<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>

<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
</html>
