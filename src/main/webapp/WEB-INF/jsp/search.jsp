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
    <title>Tìm kiếm</title>
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
                <div class="feature-text">Tìm kiếm</div>
                <div class="clear"></div>
            </div>
            <div id="item-container">
                <div id="login-ct">
                    <form action="login" method="post">
                        <div class="text-field">
                            <label>Tên sản phẩm</label>
                            <input name="productName" type="text"/>
                        </div>
                        <div class="text-field">
                            <label>Giá từ</label>
                            <select name="priceFrom">
                                <option></option>
                                <option value="0"></option>
                                <option value="50000"></option>
                                <option value="100000"></option>
                                <option value="200000"></option>
                            </select>
                        </div>
                        <div class="text-field">
                            <select name="priceTo">
                                <option></option>
                                <option value="50000"></option>
                                <option value="100000"></option>
                                <option value="200000"></option>
                            </select>
                        </div>
                        <div class="btn-fld">
                            <button type="submit">Tìm kiếm »</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>