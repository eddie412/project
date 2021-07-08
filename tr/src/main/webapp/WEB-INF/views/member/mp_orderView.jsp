<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지</title>
</head>
<body>
<h2>마이페이지</h2>
<table>
	<tr><th>아이디</th><th>주문번호</th><th>주문날짜</th><th>상품번호</th><th>상품명</th><th>상품가격</th><th>상품수량</th><th>상품총액</th></tr>
	<c:forEach var="order"  items="${orderView}">
		<tr>
			<td>${order.oId}</td>
			<td>${order.oNo}</td>
			<td>${order.oDate}</td>
			<td>${order.oNon}</td>
			<td>${order.oName}</td>
			<td>${order.oPrice}</td>
			<td>${order.oCount}</td>
		</tr>
	</c:forEach>
</table>
</body>
</html>