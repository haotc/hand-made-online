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
    <title>Cập nhật thông tin người dùng</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/stylesheets/style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/stylesheets/admin.css">
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/assets/images/logo.png" type="image/png">
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/assets/javascripts/jquery-1.10.2.js"></script>
</head>
<body>
<div class="wrapper">
    <%@ include file="common/admin-navigator.jsp" %>
    <div class="content">
        <div class="main-area">
            <div class="feature">
                <div class="feature-text">Cập nhật thông tin người dùng</div>
                <div class="clear"></div>
            </div>
            <div id="item-container">
                <form:form action="${pageContext.request.contextPath}/admin/update-user" method="post">
                    <div id="input-form">
                        <div class="text-field">
                            <label>Tên đăng nhập</label>
                            <input id="name" name="name" type="text" value="${user.login}" readonly="readonly"/>
                        </div>
                        <div class="text-field">
                            <label>Mật khẩu</label>
                            <input id="password" name="password" type="text" value="${user.password}"/>
                        </div>
                        <div class="text-field">
                            <label>Email</label>
                            <input id="email" name="email" type="text" value="${user.email}"/>
                        </div>
                        <div class="text-field">
                            <label>Quyền truy cập</label>
                            <c:choose>
                                <c:when test="${user.role == 'admin'}">
                                    <select id="role" name="role">
                                        <option value="admin" selected="1">Admin</option>
                                        <option value="customer">Customer</option>
                                    </select>
                                </c:when>
                                <c:otherwise>
                                    <select id="role" name="role">
                                        <option value="admin">Admin</option>
                                        <option value="customer" selected="1">Customer</option>
                                    </select>
                                </c:otherwise>
                            </c:choose>
                        </div>
                        <div class="btn-fld">
                            <button id="submit-button" type="submit">Hoàn tất »</button>
                        </div>
                    </div>
                </form:form>
            </div>
        </div>
    </div>
</div>

</body>
</html>