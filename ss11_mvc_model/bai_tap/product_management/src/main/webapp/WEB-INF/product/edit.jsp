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
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container mt-5">
    <h2 class="mb-4">Edit customer</h2>
    <p>
        <c:if test='${requestScope["message"] != null}'>
            <span class="message">${requestScope["message"]}</span>
        </c:if>
    </p>
    <p>
        <a href="/products">Back to product list</a>
    </p>
    <form action="/product?action=edit" method="post">
        <div class="mb-3">
            <label for="nameProduct" class="form-label">Product Name</label>
            <input type="text" class="form-control" id="nameProduct" name="nameProduct" value="${requestScope["product"].getNameProduct()}" required>
        </div>

        <div class="mb-3">
            <label for="quantity" class="form-label">Product Quantity</label>
            <input type="text" class="form-control" id="quantity" name="quantity" value="${requestScope["product"].getQuantity()}" required>
        </div>

        <button type="submit" class="btn btn-primary">Update Product</button>
    </form>
</div>
</body>
</html>
