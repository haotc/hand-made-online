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
    <title>${product.name}</title>
    <link rel="stylesheet" href="../assets/stylesheets/style.css">
    <link rel="stylesheet" href="../assets/stylesheets/product-details.css">
    <%--<link rel="stylesheet" href="../assets/stylesheets/metro-bootstrap.css">--%>
    <script type="text/javascript" src="../assets/javascripts/jquery-1.10.2.js"></script>
    <script type="text/javascript" src="../assets/javascripts/jquery.hoverIntent.minified.js"></script>
    <script type="text/javascript" src="../assets/javascripts/jquery.leanModal.min.js"></script>
    <script type="text/javascript" src="../assets/javascripts/jquery.validate.js"></script>
    <script type="text/javascript" src="../assets/javascripts/navigation.js"></script>
</head>
<body>
<div class="wrapper">
    <%@ include file="common/navigator.jsp" %>
    <div class="content">
        <%@ include file="common/top-area.jsp" %>
        <div class="main-area">
            <div class="feature">
                <div class="feature-text">Thông tin sản phẩm</div>
                <a href="add-to-cart?productId=${product.id}"><button id="buy-button">Thêm vào giỏ hàng »</button></a>
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

</body>
</html>