<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 7/1/2025
  Time: 1:54 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Delete Product</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container mt-5">
    <h2 class="mb-4">Delete Product</h2>
    <c:if test="${not empty message}">
        <div class="alert alert-info">${message}</div>
    </c:if>
    <a href="/product">← Back to product list</a>

    <form action="/product?action=delete" method="post">
        <input type="hidden" name="id" value="${product.codeProduct}"/>
        <div class="mb-3">
            <label for="nameProduct" class="form-label">Product Name</label>
            <input type="text" class="form-control" id="nameProduct" value="${product.nameProduct}" readonly>
        </div>
        <div class="mb-3">
            <label for="quantity" class="form-label">Quantity</label>
            <input type="number" class="form-control" id="quantity" value="${product.quantity}" readonly>
        </div>
        <button type="submit" class="btn btn-danger">Confirm Delete</button>
    </form>
</div>
</body>
</html>

