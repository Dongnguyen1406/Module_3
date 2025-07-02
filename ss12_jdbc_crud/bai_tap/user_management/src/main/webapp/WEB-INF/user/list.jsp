<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 7/2/2025
  Time: 10:59 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>User Management Application</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<center>
    <h1>User Management</h1>
    <h2>
        <a href="/user?action=create">Add New User</a>
    </h2>
    <form method="get" action="/user">
        <input type="hidden" name="action" value="search"/>
        <input type="text" name="country" placeholder="Tìm theo quốc gia">
        <button type="submit">Tìm kiếm</button>
    </form>

    <form method="get" action="/user">
        <input type="hidden" name="action" value="sort"/>
        <button type="submit">Sắp xếp theo tên</button>
    </form>
</center>
<div align="center">
    <caption><h2>List of Users</h2></caption>
    <table border="1" cellpadding="5">
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Email</th>
            <th>Country</th>
            <th>Actions</th>
        </tr>
        <tbody>
        <c:forEach var="user" items="${users}">
            <tr>
                <td><c:out value="${user.id}"/></td>
                <td><c:out value="${user.name}"/></td>
                <td><c:out value="${user.email}"/></td>
                <td><c:out value="${user.country}"/></td>
                <td>
                    <a href="/user?action=edit&id=${user.id}">Edit</a>
                    <a href="/user?action=delete&id=${user.id}">Delete</a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
        <c:if test="${empty users}">
            <tr>
                <td colspan="5" class="text-center text-danger fw-bold py-3">
                    Không có dữ liệu
                </td>
            </tr>
        </c:if>
    </table>
</div>
</body>
</html>
