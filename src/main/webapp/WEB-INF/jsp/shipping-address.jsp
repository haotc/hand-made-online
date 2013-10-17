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
    <title>Địa chỉ giao hàng</title>
    <link rel="stylesheet" href="../assets/stylesheets/style.css">
    <link rel="stylesheet" href="../assets/stylesheets/shipping-address.css">
    <link rel="shortcut icon" href="../assets/images/logo.png" type="image/png">
    <script type="text/javascript" src="../assets/javascripts/jquery-1.10.2.js"></script>
    <script type="text/javascript" src="../assets/javascripts/jquery.validate.js"></script>
    <script type="text/javascript" src="../assets/javascripts/navigation.js"></script>
    <script type="text/javascript" src="../assets/javascripts/shipping-address.js"></script>
</head>
<body>
<div class="wrapper">
    <%@ include file="common/navigator.jsp" %>
    <div class="content">
        <%@ include file="common/top-area.jsp" %>
        <div class="main-area">
            <div class="feature">
                <div class="feature-text">Địa chỉ giao hàng</div>
                <div class="clear"></div>
            </div>
            <div id="item-container">
                <form id="shipping-address-form" action="fill-shipping-address" method="post">

                    <div id="input-form">
                        <div class="text-field">
                            <label>Tên người nhận</label>
                            <input id="recipientName" name="recipientName" type="text"/>
                        </div>
                        <div class="text-field">
                            <label>Email</label>
                            <input id="recipientMail" name="recipientMail" type="text"/>
                        </div>
                        <div class="text-field">
                            <label>Số điện thoại</label>
                            <input id="recipientPhone" name="recipientPhone" type="text"/>
                        </div>
                        <div class="text-field address">
                            <label style="vertical-align: top;margin-top: 15px;">Địa chỉ giao hàng</label>
                            <textarea id="recipientAddress" name="recipientAddress" rows="3"
                                      style="font-family: arial, sans-serif;font-size: 14px;"></textarea>
                        </div>
                        <div class="btn-fld">
                            <button id="submit-button" type="submit">Hoàn tất »</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
</body>
</html>