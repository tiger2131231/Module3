
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Product Manager</title>
    <meta charset="UTF-8">
</head>
<body>

<h2>Danh sách sản phẩm</h2>
<a href="/products?action=create">Thêm sản phẩm</a>
<a href="/products?action=search">Tìm kiếm</a>

<table border="1" cellpadding="10">
    <tr>
        <th>ID</th><th>Tên</th><th>Giá</th><th>Hãng</th><th>Hành động</th>
    </tr>
    <c:forEach items="${products}" var="p">
        <tr>
            <td>${p.id}</td>
            <td>${p.name}</td>
            <td>${p.price}</td>
            <td>${p.manufacturer}</td>
            <td>
                <a href="/products?action=view&id=${p.id}">Xem</a>
                <a href="/products?action=edit&id=${p.id}">Sửa</a>
                <form action="/products?action=delete&id=${p.id}" method="post" style="display:inline;">
                    <button type="submit">Xóa</button>
                </form>
            </td>
        </tr>
    </c:forEach>
</table>

</body>
</html>