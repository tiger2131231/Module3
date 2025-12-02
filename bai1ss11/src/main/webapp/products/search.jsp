
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Product Manager</title>
    <meta charset="UTF-8">
</head>
<body>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<h2>Tìm kiếm sản phẩm</h2>

<form action="/products?action=search" method="post">
    Tên sản phẩm: <input name="name">
    <button type="submit">Tìm</button>
</form>

<c:if test="${not empty products}">
    <h3>Kết quả:</h3>
    <ul>
        <c:forEach items="${products}" var="p">
            <li>${p.name} - ${p.price}</li>
        </c:forEach>
    </ul>
</c:if>

</body>
</html>