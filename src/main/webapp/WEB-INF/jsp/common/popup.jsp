<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
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