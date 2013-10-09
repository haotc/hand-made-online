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
    <link rel="stylesheet" href="../assets/stylesheets/style.css">
    <link rel="shortcut icon" href="../assets/images/logo.png" type="image/png">
    <script type="text/javascript" src="../assets/javascripts/jquery-1.10.2.js"></script>
    <script type="text/javascript" src="../assets/javascripts/navigation.js"></script>
</head>
<body>
<div class="wrapper">
    <%@ include file="common/navigator.jsp" %>
    <div class="content">
        <%@ include file="common/top-area.jsp" %>
        <div class="main-area">
            <div class="feature">
                <div class="feature-text">Đăng nhập</div>
                <div class="clear"></div>
            </div>
            <div id="item-container">
                <div id="login-ct">
                    <form:form commandName="loginForm" action="login" method="post">
                        <div class="text-field">
                            <label>Tên đăng nhập</label>
                            <form:input path="username" id="username" name="username" type="text"/>
                        </div>
                        <div class="text-field">
                            <label>Mật khẩu</label>
                            <form:input path="password" id="password" name="password" type="password"/>
                        </div>
                        <div class="btn-fld">
                            <c:if test="${loginFailed}">
                                <span id="fail-msg">Tên đăng nhập hoặc mật khẩu không chính xác</span>
                            </c:if>
                            <button id="login-button" type="submit">Đăng nhập »</button>
                        </div>
                    </form:form>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>