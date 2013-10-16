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
    <title>Đăng nhập</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/stylesheets/style.css">
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
                        <img src="${pageContext.request.contextPath}/assets/images/logo.png" />
                    </div>
                    <div class="logo-text">Handmade Online</div>
                </div>
            </a></div>
            <div class="nav-list">
                <div class="nav-list-content">
                    <div class="cate-item">
                        <div class="main-cate">
                            <div class="cate-text general"><a href="user/list">Người dùng</a></div>
                        </div>
                    </div>
                    <div class="cate-item">
                        <div class="main-cate">
                            <div class="cate-text general"><a href="product">Sản phẩm</a></div>
                        </div>
                    </div>
                    <div class="cate-item">
                        <div class="main-cate">
                            <div class="cate-text general"><a href="product">Loại sản phẩm</a></div>
                        </div>
                    </div>
                    <div class="cate-item">
                        <div class="main-cate">
                            <div class="cate-text general"><a href="order">Đơn hàng</a></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="content">
        <div class="main-area">
            <div class="feature">
                <div class="feature-text">Trang quản lí</div>
                <div class="clear"></div>
            </div>
            <div id="item-container">

            </div>
        </div>
    </div>
</div>

</body>
</html>