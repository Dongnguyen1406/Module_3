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
    <title>Danh sách sản phẩm</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container mt-5">
    <button class="btn btn-primary" onclick="window.location.href='/product?action=create'">Thêm mới</button>
    <h2 class="mb-4 text-center">Danh sách sản phẩm</h2>
    <table class="table table-bordered table-hover table-striped align-middle">
        <thead class="table-primary">
        <tr class="text-center">
            <th>No</th>
            <th>Tên</th>
            <th>Số lượng</th>
            <th>Ảnh</th>
            <td colspan="2">Action</td>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${products}" var="product" varStatus="temp">
            <tr class="text-center">
                <td class="text-center">${temp.count}</td>
                <td><a href="/product?action=view&id=${product.getCodeProduct()}">${product.getNameProduct()}</a></td>
                <td>${product.quantity}</td>
                <td style="text-align: center;"><img src="${pageContext.request.contextPath}/${product.image}" alt=""
                                                     width="80" height="80"></td>
                <td><a href="/product?action=edit&id=${product.getCodeProduct()}">edit</a></td>
                <td><a href="/product?action=delete&id=${product.getCodeProduct()}">delete</a></td>
            </tr>
        </c:forEach>
        </tbody>
        <c:if test="${empty customers}">
            <tr>
                <td colspan="5" class="text-center text-danger fw-bold py-3">
                    Không có dữ liệu sản phẩm
                </td>
            </tr>
        </c:if>
    </table>
    

</div>
</body>
</html>
