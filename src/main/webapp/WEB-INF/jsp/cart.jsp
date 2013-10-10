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
    <title>Handmade Online</title>
    <link rel="stylesheet" href="../assets/stylesheets/style.css">
    <link rel="stylesheet" href="../assets/stylesheets/cart.css">
    <script type="text/javascript" src="../assets/javascripts/jquery-1.10.2.js"></script>
    <script type="text/javascript" src="../assets/javascripts/jquery.hoverIntent.minified.js"></script>
    <script type="text/javascript" src="../assets/javascripts/jquery.leanModal.min.js"></script>
    <script type="text/javascript" src="../assets/javascripts/jquery.validate.js"></script>
    <script type="text/javascript" src="../assets/javascripts/navigation.js"></script>
    <script type="text/javascript" src="../assets/javascripts/cart.js"></script>
</head>
<body>
<div class="wrapper">
    <%@ include file="common/navigator.jsp" %>
    <div class="content">
        <%@ include file="common/top-area.jsp" %>
        <div class="main-area">
            <div class="feature">
                <div class="feature-text">Giỏ hàng</div>
                <c:if test="${not empty sessionScope.cart}">
                    <a href="shipping-address"><button id="checkout-button">Thanh toán »</button></a>
                </c:if>
                <div class="clear"></div>
            </div>
            <div id="item-container">
                <center>
                    <c:choose>
                        <c:when test="${empty sessionScope.cart}">
                            <center><h2>Bạn chưa có sản phẩm nào trong giỏ hàng.</h2></center>
                        </c:when>
                        <c:otherwise>
                            <table class="tbl-cart">
                                <tbody>
                                <tr>
                                    <th width="50%">Sản phẩm</th>
                                    <th width="15%">Giá tiền</th>
                                    <th width="15%">Số lượng</th>
                                    <th width="20%">Thành tiền</th>
                                </tr>
                                <c:set var="total" value="${0}"/>
                                <c:forEach items="${sessionScope.cart}" var="item">
                                    <tr>
                                        <td>
                                            <img class="product-img" width="70" height="70"
                                                 src=${item.imageUrl} alt=${item.productName} />

                                            <h3><a class="product-name" href="#">${item.productName}</a> <br/></h3>
                                            <a class="icon-del-a" href="delete-from-cart?productId=${item.productId}"><i
                                                    class="icon-del"></i></a>
                                        </td>
                                        <td><p class="unit-price price"><span>${item.unitPrice}</span><i>đ</i></p></td>
                                        <td style="text-align: center">
                                            <input class="quantity" type="number" min="1" max="99" maxlength="2"
                                                   value=${item.quantity} style="width:33px;height:20px">
                                        </td>
                                        <td><p class="cost price"><span>${item.quantity * item.unitPrice}</span><i>đ</i>
                                        </p></td>
                                    </tr>
                                    <c:set var="total" value="${total + item.quantity * item.unitPrice}"/>
                                </c:forEach>
                                <tr>
                                    <td></td>
                                    <td colspan="2"><h2 style="text-align: center">Tổng cộng:</h2></td>
                                    <td><p class="total-cost price"><span>${total}</span><i>đ</i></p></td>
                                </tr>
                                </tbody>
                            </table>
                        </c:otherwise>
                    </c:choose>
                </center>
            </div>
        </div>
    </div>
</div>

</body>
</html>