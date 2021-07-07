<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품목록</title>
<%@ include file="../include/header.jsp" %>
</head>
<body>
<%@ include file="../include/nav.jsp" %>
<br>
<h2>상품목록</h2>
<table border="1">
<!-- 상품이미지 -->
	<c:forEach var="row" items="${list}">
	<tr>
		<td><img src="${path}/images/${row.pImg}" width="100px" height="110px"></td>	
	</tr>
<!-- 상품명 -->
	<tr>
		<td>${row.pName}</td>
	<tr>
<!-- 가격 -->
	<tr>
		<td>
			<fmt:formatNumber value="${row.pPrice}" pattern="###,###,###"/> 원
			
		</td>
	<tr>
	
	</c:forEach>	
</table>

<footer id="footer">
	<%@ include file="../include/footer.jsp" %>
</footer>
</body>
</html>