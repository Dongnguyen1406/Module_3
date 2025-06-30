<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 6/30/2025
  Time: 3:04 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container mt-5">
    <h2 class="mb-4 text-center">Danh sách khách hàng</h2>

    <table class="table table-bordered table-hover table-striped align-middle">
        <thead class="table-primary">
        <tr class="text-center">
            <th >No</th>
            <th >Tên</th>
            <th >Ngày sinh</th>
            <th >Địa chỉ</th>
            <th >Ảnh</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${customers}" var="customer" varStatus="temp">
            <tr class="text-center">
                <td class="text-center">${temp.count}</td>
                <td>${customer.nameCustomer}</td>
                <td>${customer.dob}</td>
                <td>${customer.address}</td>
                <td style="text-align: center;"><img src="${pageContext.request.contextPath}/${customer.image}" alt="" width="80" height="80"></td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
</body>
</html>
