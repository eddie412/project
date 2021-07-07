<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품목록</title>
<%@ include file="../include/header.jsp" %>
</head>
<body>
<%@ include file="../include/nav.jsp" %>
<h2>상품목록</h2>
<table border="1">
<!-- 상품이미지 -->
	<tr>
		<td><img src="${path}/images/${row.productImg}" width="100px" height="110px"></td>	
	</tr>
<!-- 상품명 -->
	<tr>
		<td>${row.productName}</td>
	<tr>
<!-- 가격 -->
	<tr>
		<td>
			<fmt:formatNumber value="${row.productPrice}" pattern="###,###,###"/>
			
		</td>
	<tr>
	
		
</table>

<footer id="footer">
	<%@ include file="../include/footer.jsp" %>
</footer>
</body>
</html>