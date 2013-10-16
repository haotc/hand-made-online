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
    <title>Quản lí người dùng</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/stylesheets/style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/stylesheets/admin.css">
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/assets/images/logo.png" type="image/png">
    <script type="text/javascript" src="${pageContext.request.contextPath}/assets/javascripts/jquery-1.10.2.js"></script>
</head>
<body>
<div class="wrapper">
    <%@ include file="common/admin-navigator.jsp" %>
    <div class="content">
        <div class="main-area">
            <div class="feature">
                <div class="feature-text">Quản lí nhóm hàng</div>
                <a href="new"><button>Tạo mới</button></a>
                <div class="clear"></div>
            </div>
            <div id="item-container">

                <table class="list-table">
                    <tbody>
                    <tr>
                        <th>Mô tả</th>
                        <th>Tên viết tắt</th>
                        <th colspan="2">Thao tác</th>
                    </tr>
                    <c:forEach var="c" items="${categoryList}">
                        <tr>
                            <td><a href="${c.id}">${c.description}</a></td>
                            <td>${c.name}</td>
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