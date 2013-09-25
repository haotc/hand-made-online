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
            <div class="top-left-logo"><a href="www.vnexpress.net" class="logo-ref">
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
                <div class="feature-text">Thông tin sản phẩm</div>
                <button id="buy-button"><a href="cart?id=${product.id}">Thêm vào giỏ hàng »</a></button>
                <div class="clear"></div>
            </div>
            <div id="item-container">
                <div id="image-area">
                    <img src="${product.imageUrl}"/>
                </div>
                <div id="info-area">
                    <h1>${product.name}</h1>

                    <h2>${product.unitPrice} Đ</h2>

                    <p class="desc-area">${product.detailDesc}</p>
                </div>
            </div>
        </div>
    </div>
</div>

<c:if test="${sessionScope.loginUser == null}">
    <div id="loginPopup" class="popup">
            <%--<form:form commandName="loginUser" action="login" method="post">--%>
        <div id="login-ct">
            <div id="login-header">
                <h2>Đăng nhập</h2>
                <a class="modal_close" href="#"></a>
            </div>
            <div class="text-field">
                <label>Tên đăng nhập</label>
                <input path="username" id="username-input" class="good_input" name="" type="text"/>
            </div>
            <div class="text-field">
                <label>Mật khẩu</label>
                <input path="password" id="password-input" name="" type="password"/>
            </div>
            <div class="btn-fld">
                <span id="fail-msg" class="undisplayed">Tên đăng nhập hoặc mật khẩu không chính xác</span>
                <button id="login-button">Đăng nhập »</button>
            </div>
        </div>
            <%--</form:form>--%>
    </div>

    <div id="register-popup" class="popup">
        <form:form id="register-form" commandName="registerUser" action="register" method="post">
            <div id="register-ct">
                <div id="register-header">
                    <h2>Đăng kí</h2>
                    <a class="modal_close" href="#"></a>
                </div>
                <div class="text-field">
                    <label>Tên đăng nhập</label>
                    <form:input path="username" id="regUsername" name="regUsername" type="text"/>
                </div>
                <div class="text-field">
                    <label>Email</label>
                    <form:input path="email" id="regEmail" name="regEmail" type="text"/>
                </div>
                <div class="text-field">
                    <label>Mật khẩu</label>
                    <form:input path="password" id="regPassword" name="regPassword" type="password"/>
                </div>
                <div class="text-field">
                    <label>Xác nhận mật khẩu</label>
                    <form:input path="confirmPassword" id="regRepassword" name="regRepassword" type="password"/>
                </div>
                <div class="btn-fld">
                    <span id="fail-msg1" class="undisplayed">Tên đăng nhập hoặc mật khẩu không đúng</span>
                    <button id="reg-button" type="submit">Hoàn tất »</button>
                </div>
            </div>
        </form:form>
    </div>
</c:if>

</body>
</html>