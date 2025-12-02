
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Product Manager</title>
    <meta charset="UTF-8">
</head>
<body>

<h2>Sửa sản phẩm</h2>

<form action="/products?action=edit" method="post">
    <input type="hidden" name="id" value="${product.id}">
    Tên: <input name="name" value="${product.name}"><br>
    Giá: <input name="price" value="${product.price}"><br>
    Mô tả: <input name="description" value="${product.description}"><br>
    Nhà sản xuất: <input name="manufacturer" value="${product.manufacturer}"><br>
    <button type="submit">Cập nhật</button>
</form>

</body>
</html>