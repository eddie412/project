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
	width: 80%;
	margin-left: 250px;
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

#sidemenu {
	width: 20%;
	height: 80%;
}

#sidemenu>ul {
	list-style: none;
}

#sidemenu  li {
	display: table-cell;
	color: black;
	line-height: 100px;
}

#sidemenu  a {
	color: black;
}

#sidemenu  a:visited {
	color: black;
}

#sidemenu a:hover {
	color: #6C28F0;
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
	<div id="sidemenu">
		<h3 style="padding-left: 60px">마이페이지</h3>
		<ul align="center">
			<li><a href="mp_order">주문상세내역</a></li>
			<li><a href="mp_qna">문의사항</a></li>
			<li><a href="mp_update">회원정보수정</a></li>
			<li><a href="mp_deleteview">탈퇴하기</a></li>
		</ul>
	</div>

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