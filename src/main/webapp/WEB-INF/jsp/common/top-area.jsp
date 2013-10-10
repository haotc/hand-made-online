<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<div class="top-area">
    <a class="nav-cart" href="cart"></a>
    <div class="user-setting">
        <div class="user">
            <c:choose>
                <c:when test="${sessionScope.loginUser == null}">
                    <a id="login-label" href="login">Đăng nhập</a>
                    <a href="register" id='register-label'>Đăng kí</a></span>
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