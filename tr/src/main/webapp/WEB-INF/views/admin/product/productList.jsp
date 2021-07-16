<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<header id="header">
		<div id="header_box">
			<%@ include file="../../include/header.jsp"%>
		</div>
	</header>
	<aside>
		<%@ include file="../aside.jsp"%>
	</aside>
	<br><hr>
	<section>
		<button type="button" onclick="location.href='productAdd'">상품등록</button>
	</section>
	<table>
		<tr>
			<th>상품번호</th>
			<th>상품명</th>
			<th>판매가</th>
			<th>재고</th>
			<th>판매량</th>	
		</tr>
	<c:forEach var="product"  items="${productList}">
		<tr>
			<td>${product.pNo}</td>
			<td><a href="productView?n=${product.pNo}">${product.pName}</a></td>
			<td>${product.pPrice}</td>
			<td>${product.pCount}</td>
			<td>${product.pSales}</td>
		</tr>
	</c:forEach>
		
	</table>
</body>
</html>