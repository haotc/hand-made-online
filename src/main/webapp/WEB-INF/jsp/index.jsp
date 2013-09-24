<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Home</title>
    <link rel="stylesheet" href="../stylesheets/style.css">
    <script type="text/javascript" src="../javascripts/jquery-1.10.2.js"></script>
    <script type="text/javascript" src="../javascripts/jquery.hoverIntent.minified.js"></script>
    <script type="text/javascript" src="../javascripts/navigation.js"></script>
</head>
<body>
<%--<h1>List of All Products</h1>--%>
<%--<ul>--%>
<%--<c:forEach var="p" items="${products}">--%>
<%--<li>${p.id} - ${p.name} - ${p.shortDesc}</li>--%>
<%--</c:forEach>--%>
<%--<c:forEach var="p" items="${producers}">--%>
<%--<li>${p.id} - ${p.name}</li>--%>
<%--</c:forEach>--%>
<%--<a href="main.jsp">main</a>--%>
<%--</ul>--%>
<form:form method="POST" action="submit" commandName="customer">

    UserName : <form:input path="login"/>
    <input type="submit"/>
</form:form>

</body>
</html>