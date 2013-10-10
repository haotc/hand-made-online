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
    <title>Đăng kí</title>
    <link rel="stylesheet" href="../assets/stylesheets/style.css">
    <link rel="shortcut icon" href="../assets/images/logo.png" type="image/png">
    <script type="text/javascript" src="../assets/javascripts/jquery-1.10.2.js"></script>
    <script type="text/javascript" src="../assets/javascripts/jquery.validate.js"></script>
    <script type="text/javascript" src="../assets/javascripts/navigation.js"></script>
    <script type="text/javascript" src="../assets/javascripts/register.js"></script>
</head>
<body>
<div class="wrapper">
    <%@ include file="common/navigator.jsp" %>
    <div class="content">
        <%@ include file="common/top-area.jsp" %>
        <div class="main-area">
            <div class="feature">
                <div class="feature-text">Đăng kí</div>
                <div class="clear"></div>
            </div>
            <form:form id="register-form" action="register" method="post">
                <div id="item-container">
                    <div id="register-ct">
                        <div class="text-field">
                            <label>Tên đăng nhập</label>
                            <input id="regUsername" name="regUsername" type="text"/>
                        </div>
                        <div class="text-field">
                            <label>Email</label>
                            <input id="regEmail" name="regEmail" type="text"/>
                        </div>
                        <div class="text-field">
                            <label>Mật khẩu</label>
                            <input id="regPassword" name="regPassword" type="password"/>
                        </div>
                        <div class="text-field">
                            <label>Xác nhận mật khẩu</label>
                            <input id="regRepassword" name="regRepassword" type="password"/>
                        </div>
                        <div class="btn-fld">
                            <button id="reg-button" type="submit">Hoàn tất »</button>
                        </div>
                    </div>
                </div>
            </form:form>
        </div>
    </div>
</div>
</body>
</html>