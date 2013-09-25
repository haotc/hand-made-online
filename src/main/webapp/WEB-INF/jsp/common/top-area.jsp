<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
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