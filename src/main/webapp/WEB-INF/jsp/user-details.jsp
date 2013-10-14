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
    <title>Thông tin người dùng</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/stylesheets/style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/stylesheets/admin.css">
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/assets/images/logo.png" type="image/png">
    <script type="text/javascript" src="${pageContext.request.contextPath}/assets/javascripts/jquery-1.10.2.js"></script>
</head>
<body>
<div class="wrapper">
    <div class="navigator">
        <div class="navigator-wrapper">
            <div class="top-left-logo"><a href="/" class="logo-ref">
                <div class="logo">
                    <div class="logo-img">
                        <img src="${pageContext.request.contextPath}/assets/images/logo.png"/>
                    </div>
                    <div class="logo-text">Handmade Online</div>
                </div>
            </a></div>
            <div class="nav-list">
                <div class="nav-list-content">
                    <div class="cate-item">
                        <div class="main-cate">
                            <div class="cate-text selected"><a href="admin/user-list">Người dùng</a></div>
                        </div>
                    </div>
                    <div class="cate-item">
                        <div class="main-cate">
                            <div class="cate-text href"><a href="product">Sản phẩm</a></div>
                        </div>
                    </div>
                    <div class="cate-item">
                        <div class="main-cate">
                            <div class="cate-text"><a href="product">Loại sản phẩm</a></div>
                        </div>
                    </div>
                    <div class="cate-item">
                        <div class="main-cate">
                            <div class="cate-text"><a href="order">Đơn hàng</a></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="content">
        <div class="main-area">
            <div class="feature">
                <div class="feature-text">Thông tin người dùng</div>
                <div class="clear"></div>
            </div>
            <div id="item-container">
                <table class="tbl-cart">
                    <tbody>
                    <tr>
                        <td>Tên đăng nhập</td>
                        <td>${user.login}</td>
                    </tr>
                    <tr>
                        <td>Mật khẩu</td>
                        <td>${user.password}</td>
                    </tr>
                    <tr>
                        <td>Email</td>
                        <td>${user.email}</td>
                    </tr>
                    <tr>
                        <td>Role</td>
                        <td>${user.role}</td>
                    </tr>
                    <tr>
                        <td>Họ và tên</td>
                        <td>${user.profile.firstName} ${user.profile.lastName}</td>
                    </tr>
                    <tr>
                        <td>Ngày sinh</td>
                        <td>${user.profile.birthday}</td>
                    </tr>
                    <tr>
                        <td>Số điện thoại</td>
                        <td>${user.profile.phone}</td>
                    </tr>
                    <tr>
                        <td colspan="2" align="right">
                            <a href="${pageContext.request.contextPath}/admin/user/${user.login}/edit"><button id="update-btn">Sửa</button></a>
                            <a href="${pageContext.request.contextPath}/admin/user/delete?us=${user.login}"><button id="delete-btn">Xóa</button></a>
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