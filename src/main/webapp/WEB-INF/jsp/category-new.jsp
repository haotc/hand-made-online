<%--
  Created by IntelliJ IDEA.
  User: HaoTC
  Date: 9/15/13
  Time: 5:14 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Thêm dòng sản phẩm</title>
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
        <%@ include file="common/top-area.jsp" %>
        <div class="main-area">
            <div class="feature">
                <div class="feature-text">Thêm dòng sản phẩm</div>
                <div class="clear"></div>
            </div>
            <div id="item-container">
                <form:form action="${pageContext.request.contextPath}/admin/category/create" method="post">
                    <div id="input-form">
                        <div class="text-field">
                            <label>Tên viết tắt</label>
                            <input id="name" name="name" type="text" value="${category.name}"/>
                        </div>
                        <div class="text-field">
                            <label>Mô tả</label>
                            <input id="desc" name="desc" type="text" value="${category.description}"/>
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