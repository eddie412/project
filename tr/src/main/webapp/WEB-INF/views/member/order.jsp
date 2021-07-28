<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- Core theme CSS-->
<link href="../resources/css/orderStyle.css" rel="stylesheet" />
<!-- font -->
<link href="https://fonts.googleapis.com/css2?family=East+Sea+Dokdo&display=swap" rel="stylesheet">
<title>마이페이지</title>
</head>
<body>
	<!-- 헤드 -->
	<div id="header"></div>
	
	<!-- 사이드 메뉴 -->
    <%@ include file="../include/mypageNav.jsp" %>

	<!-- 메인 -->
	<div id="main">
		<div class="title">마이페이지 > <span>주문상세내역</span></div>
	
		<c:forEach var="order" items="${order}">
			<div id="content">
					<div class="image">
						<a href='/product/product?pno=${order.pNo}'><img src="../resources/images/${order.pImg}" alt="${order.pName} 이미지" ></a>
					</div>
					<div class="info">
						<div class="no">
							<span class="oId">${order.oId}</span>
							<button type="button" class="${order.delivery eq '배송준비' ? 'badge rounded-pill bg-warning' : 'badge rounded-pill bg-success'}">${order.delivery}</button>
						</div>
						<span class="date"><fmt:formatDate value="${order.oDate}" pattern="yyyy-MM-dd" /></span>
						<span><br>${order.pName}(<fmt:formatNumber pattern="###,###,###" value="${order.pPrice}" />원)</span>
						<span>${order.count}개</span>
						<fmt:formatNumber pattern="###,###,###" value="${order.pPrice * order.count}" />원
						<a href='mpOrderDetail?oId=${order.oId}'>주문상세 > </a>
					</div>
			</div>
		</c:forEach>
	</div>

</body>
</html>