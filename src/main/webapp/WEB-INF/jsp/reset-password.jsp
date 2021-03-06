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
    <title>Lấy lại mật khẩu</title>
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
                <div class="feature-text">Lấy lại mật khẩu</div>
                <div class="clear"></div>
            </div>
            <div id="item-container">
                <div id="login-ct">
                    <form action="reset-password" method="post">
                        <div class="text-field">
                            <label>Tên đăng nhập</label>
                            <input id="username" name="username" type="text"/>
                        </div>
                        <div class="text-field">
                            <label>Email</label>
                            <input id="email" name="email" type="text"/>
                        </div>
                        <div class="btn-fld">
                            <c:if test="${resetFailed}">
                                <span id="fail-msg">Đã xảy ra lỗi trong quá trình xác nhận</span>
                            </c:if>
                            <button id="login-button" type="submit">Hoàn tất »</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>