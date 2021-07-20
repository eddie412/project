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
	width: 70%;
	overflow-y: scroll;
	margin-right: 100px;
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
	
	<!-- 메인 -->>
		<table id="main" align="right">
		<tr>
			<th>주문날짜</th>
			<th>주문번호</th>
			<th>상품이미지</th>
			<th>상품명</th>
			<th>가격</th>
			<th>수량</th>
			<th>금액</th>
			<th>주문상태</th>
		</tr>
		<c:if test="${empty orderlist}">
			<td colspan="7">상품을 구매한적이 없습니다.</td>
		</c:if>
		<c:forEach var="orderList" items="${orderlist}">
			<tr>
				<td><fmt:formatDate value="${orderList.oDate}" pattern="yyyy.MM.dd" /></td>
				<td><a href='mp_orderDetail?n=${orderList.oId}'>${orderList.oId}</a></td>
				<td><a href='/product/product?pno=${orderList.pNo}'><img src="../resources/images/${orderList.pImg}" alt="${orderList.pName} 이미지" ></a></td>
				<td>${orderList.pName}</td>
				<td><fmt:formatNumber pattern="###,###,###" value="${orderList.pPrice}" />원</td>
				<td>${orderList.count}개</td>
				<td><fmt:formatNumber pattern="###,###,###" value="${orderList.pPrice * orderList.count}" />원</td>
				<td>${orderList.delivery}</td>
			</tr>
		</c:forEach>
	</table>

</body>
</html>