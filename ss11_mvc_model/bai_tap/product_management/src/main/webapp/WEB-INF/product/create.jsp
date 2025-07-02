<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 7/1/2025
  Time: 1:54 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container mt-5">
    <h2 class="mb-4">Add New Product</h2>
    <form action="/product?action=create" method="post">
        <div class="mb-3">
            <label for="codeProduct" class="form-label">Product Code</label>
            <input type="number" class="form-control" id="codeProduct" name="codeProduct" required>
        </div>

        <div class="mb-3">
            <label for="nameProduct" class="form-label">Product Name</label>
            <input type="text" class="form-control" id="nameProduct" name="nameProduct" required>
        </div>

        <div class="mb-3">
            <label for="quantity" class="form-label">Product Quantity</label>
            <input type="text" class="form-control" id="quantity" name="quantity" required>
        </div>
        
        <button type="submit" class="btn btn-primary">Add Product</button>
    </form>
</div>
</body>
</html>
