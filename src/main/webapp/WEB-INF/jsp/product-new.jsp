<%--
  Created by IntelliJ IDEA.
  User: HaoTC
  Date: 9/15/13
  Time: 5:14 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Thêm sản phẩm</title>
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
                <div class="feature-text">Thêm sản phẩm</div>
                <div class="clear"></div>
            </div>
            <div id="item-container">
                <form:form modelAttribute="product" action="${pageContext.request.contextPath}/admin/product/create"
                           method="post">
                    <div id="input-form">
                        <form:hidden path="id"/>
                        <div class="text-field">
                            <label>Tên sản phẩm</label>
                            <form:input path="name" id="name" name="name" type="text"/>
                        </div>
                        <div class="text-field">
                            <label>Loại sản phẩm</label>
                            <form:select path="categoryId">
                                <form:options items="${categoryList}" var="category" itemValue="key"
                                              itemLabel="value"/>
                            </form:select>
                        </div>
                        <div class="text-field">
                            <label>Hình minh họa</label>
                            <input id="imageUrl" name="imageUrl" type="text"/>
                        </div>
                        <div class="text-field">
                            <label>Mô tả ngắn gọn</label>
                            <form:textarea path="shortDesc" id="shortDesc" name="shortDesc" rows="3"
                                      style="width: 400px;font-family: arial, sans-serif;font-size: 14px;"></form:textarea>
                        </div>
                        <div class="text-field">
                            <label>Mô tả chi tiết</label>
                            <form:textarea path="detailDesc" id="detailDesc" name="detailDesc" rows="5"
                                      style="width: 400px;font-family: arial, sans-serif;font-size: 14px;"></form:textarea>
                        </div>
                        <div class="text-field">
                            <label>Giá</label>
                            <form:input path="unitPrice" id="unitPrice" name="unitPrice" type="text"/>
                        </div>
                        <div class="text-field">
                            <label>Số lượng đã bán</label>
                            <form:input path="numberOfSold" id="numberOfSold" name="numberOfSold" type="text"/>
                        </div>
                        <div class="text-field">
                            <label>Số lượng còn lại</label>
                            <form:input path="quantity" id="quantity" name="quantity" type="text"/>
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