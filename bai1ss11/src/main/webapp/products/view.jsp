
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Product Manager</title>
    <meta charset="UTF-8">
</head>
<body>

<h2>Chi tiết sản phẩm</h2>

<p>ID: ${product.id}</p>
<p>Tên: ${product.name}</p>
<p>Giá: ${product.price}</p>
<p>Mô tả: ${product.description}</p>
<p>Nhà sản xuất: ${product.manufacturer}</p>

<a href="/products">Quay lại</a>

</body>
</html>