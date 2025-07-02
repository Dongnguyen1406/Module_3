<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 7/1/2025
  Time: 1:55 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>View Product</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container mt-5">
    <h2 class="mb-4">Product Detail</h2>
    <a href="/product">← Back to product list</a>

    <ul class="list-group">
        <li class="list-group-item"><strong>ID:</strong> ${product2.codeProduct}</li>
        <li class="list-group-item"><strong>Name:</strong> ${product2.nameProduct}</li>
        <li class="list-group-item"><strong>Quantity:</strong> ${product2.quantity}</li>
        <li class="list-group-item"><strong>Image:</strong> <img
                src="${pageContext.request.contextPath}/${product2.image}" width="100"/></li>
    </ul>
</div>
</body>
</html>

