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
    <title>Handmade Online</title>
    <link rel="stylesheet" href="../assets/stylesheets/style.css">
    <%--<link rel="stylesheet" href="../assets/stylesheets/metro-bootstrap.css">--%>
    <script type="text/javascript" src="../assets/javascripts/jquery-1.10.2.js"></script>
    <script type="text/javascript" src="../assets/javascripts/jquery.hoverIntent.minified.js"></script>
    <script type="text/javascript" src="../assets/javascripts/jquery.leanModal.min.js"></script>
    <script type="text/javascript" src="../assets/javascripts/jquery.validate.js"></script>
    <script type="text/javascript" src="../assets/javascripts/navigation.js"></script>
</head>
<body>
<div class="wrapper">
    <div class="navigator">
        <div class="navigator-wrapper">
            <div class="top-left-logo"><a href="/" class="logo-ref">
                <div class="logo">
                    <div class="logo-img"></div>
                    <div class="logo-text">Handmade Online</div>
                </div>
            </a></div>
            <div class="search-area"><input type="text" placeholder="Search store" class="search-box"></div>
            <div class="nav-list">
                <div class="nav-list-content">
                    <div class="cate-item">
                        <div class="main-cate">
                            <div class="cate-text general selected"><a href="http://www.vnexpress.net">Games</a></div>
                        </div>
                        <div id="sub1" class="sub-cate-list" style="display: block;">
                            <div class="sub-cate">
                                <div class="cate-text sub"><a href="http://www.vnexpress.net">Games</a></div>
                            </div>
                            <div class="sub-cate">
                                <div class="cate-text sub"><a href="http://www.vnexpress.net">Games</a></div>
                            </div>
                            <div class="sub-cate">
                                <div class="cate-text sub"><a href="http://www.vnexpress.net">Games </a></div>
                            </div>
                        </div>
                    </div>
                    <div class="separator-line"></div>
                    <div class="cate-item">
                        <div class="main-cate">
                            <div class="cate-text general"><a href="http://www.vnexpress.net">Games</a></div>
                        </div>
                        <div id="sub2" class="sub-cate-list" style="display: block;">
                            <div class="sub-cate">
                                <div class="cate-text sub"><a href="http://www.vnexpress.net">Games</a></div>
                            </div>
                            <div class="sub-cate">
                                <div class="cate-text sub"><a href="http://www.vnexpress.net">Games</a></div>
                            </div>
                            <div class="sub-cate">
                                <div class="cate-text sub"><a href="http://www.vnexpress.net">Games </a></div>
                            </div>
                        </div>
                    </div>
                    <div class="separator-line"></div>
                </div>
            </div>
        </div>
    </div>
    <div class="content">
        <div class="top-area">
            <div class="user-setting">
                <div class="user">
                    <c:choose>
                        <c:when test="${sessionScope.loginUser == null}">
                            <a id="login-label" rel="leanModal" href="#loginPopup">Đăng nhập</a>
                            <a href="#register-popup" id='register-label' rel="leanModal">Đăng kí</a></span>
                        </c:when>
                        <c:otherwise>
                            <span id="login-name">${sessionScope.loginUser}</span>
                            <a id='logout-label' href="/logout">Đăng xuất</a>
                        </c:otherwise>
                    </c:choose>
                </div>
                <%--<div class="setting"></div>--%>
            </div>

        </div>
        <div class="main-area">
            <div class="feature">
                <div class="feature-text">Featured</div>
                <div class="clear"></div>
            </div>