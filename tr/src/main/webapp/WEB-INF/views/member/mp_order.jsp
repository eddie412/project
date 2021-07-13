<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지</title>
</head>
<style type="text/css">
#main {
	position: fixed;
	width: 70%;
	margin-left: 400px;
	margin-top: 50px;
	text-align: center;
}

#main, #main th, #main td {
	border: 1px solid gray;
	border-collapse: collapse;
}

#main th {
	background: #B28EF7;
}
</style>
<body>
	<!-- 헤드 -->
	<header>
		<div id="header_box">
			<%@ include file="../include/header.jsp"%>
		</div>
	</header>

	<h2 align="center">주문상세내역</h2>
	<!-- 사이드 메뉴 -->
	<%@ include file="../include/mypageNav.jsp" %>

	<!-- 메인 -->
	<table id="main" align="right">
		<tr>
			<th>주문번호</th>
			<th>주문날짜</th>
			<th>상품번호</th>
			<th>상품명</th>
			<th>상품가격</th>
			<th>상품수량</th>
			<th>상품총액</th>
		</tr>
		<c:if test="${empty order}">
			<td colspan="7">상품을 구매한적이 없습니다.</td>
		</c:if>
		<c:forEach var="order" items="${order}">
			<tr>
				<td>${order.oNo}</td>
				<td><fmt:formatDate value="${order.oDate}" pattern="yyyy.MM.dd" /></td>
				<td>${order.oNon}</td>
				<td>${order.oName}</td>
				<td>${order.oPrice}</td>
				<td>${order.oCount}</td>
				<td>${order.oTotal}</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>