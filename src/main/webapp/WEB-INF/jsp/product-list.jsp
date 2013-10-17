<%--
  Created by IntelliJ IDEA.
  User: HaoTC
  Date: 9/15/13
  Time: 5:14 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Quản lí sản phẩm</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/stylesheets/style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/stylesheets/admin.css">
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/assets/images/logo.png" type="image/png">
    <script type="text/javascript" src="${pageContext.request.contextPath}/assets/javascripts/jquery-1.10.2.js"></script>
</head>
<body>
<div class="wrapper">
    <%@ include file="common/admin-navigator.jsp" %>
    <div class="content">
        <%@ include file="common/top-area.jsp" %>
        <div class="main-area">
            <div class="feature">
                <div class="feature-text">Quản lí sản phẩm</div>
                <a href="new"><button>Tạo mới</button></a>
                <div class="clear"></div>
            </div>
            <div id="item-container">

                <table class="list-table">
                    <tbody>
                    <tr>
                        <th>STT</th>
                        <th>Tên sản phẩm</th>
                        <th>Dòng sản phẩm</th>
                        <th>Giá</th>
                        <th colspan="2">Thao tác</th>
                    </tr>
                    <c:forEach var="c" items="${productList}" varStatus="index">
                        <tr>
                            <td>${index.count}</td>
                            <td><a href="${c.id}">${c.name}</a></td>
                            <td>${c.category.name}</td>
                            <td>${c.unitPrice}</td>
                            <td><a href="${c.id}/edit"><button>Sửa</button></a></td>
                            <td><a href="delete?id=${c.id}"><button>Xóa</button></a></td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>

</body>
</html>