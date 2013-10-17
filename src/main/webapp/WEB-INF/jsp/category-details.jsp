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
    <title>Thông tin dòng sản phẩm</title>
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
        <%@ include file="common/top-area.jsp" %>
        <div class="main-area">
            <div class="feature">
                <div class="feature-text">Thông tin dòng sản phẩm</div>
                <div class="clear"></div>
            </div>
            <div id="item-container">
                <table class="list-table">
                    <tbody>
                    <tr>
                        <td>Tên viết tắt</td>
                        <td>${category.name}</td>
                    </tr>
                    <tr>
                        <td>Mô tả</td>
                        <td>${category.description}</td>
                    </tr>
                    <tr>
                        <td colspan="2" align="right">
                            <a href="${pageContext.request.contextPath}/admin/category/${category.id}/edit"><button id="update-btn">Sửa</button></a>
                            <a href="${pageContext.request.contextPath}/admin/category/delete?id=${category.id}"><button id="delete-btn">Xóa</button></a>
                        </td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>

</body>
</html>