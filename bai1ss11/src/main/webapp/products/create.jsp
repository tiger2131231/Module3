<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Thêm sản phẩm mới</title>
</head>
<body>

<h2>Thêm sản phẩm mới</h2>

<form action="${pageContext.request.contextPath}/products?action=create" method="post" accept-charset="UTF-8">
    <table>
        <tr>
            <td>ID:</td>
            <td><input type="number" name="id" required></td>
        </tr>
        <tr>
            <td>Tên sản phẩm:</td>
            <td><input type="text" name="name" required></td>
        </tr>
        <tr>
            <td>Giá:</td>
            <td><input type="number" step="0.1" name="price" required></td>
        </tr>
        <tr>
            <td>Mô tả:</td>
            <td><input type="text" name="description"></td>
        </tr>
        <tr>
            <td>Nhà sản xuất:</td>
            <td><input type="text" name="manufacturer"></td>
        </tr>
        <tr>
            <td></td>
            <td><button type="submit">Lưu sản phẩm</button></td>
        </tr>
    </table>
</form>

<br>
<a href="${pageContext.request.contextPath}/products">Quay lại danh sách</a>

</body>
</html>
