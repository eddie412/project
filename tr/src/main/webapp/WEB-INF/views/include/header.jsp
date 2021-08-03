<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- Font -->
<link
	href="https://fonts.googleapis.com/css2?family=East+Sea+Dokdo&display=swap"
	rel="stylesheet" />

<!-- Core theme CSS (includes Bootstrap)-->
<link href="../resources/css/homeStyles.css" rel="stylesheet" />
<body style="position: absoulte; z-index:5; ">
<nav class="navbar navbar-expand-lg navbar-light bg-light" style="height:7.6rem;">
	<div class="container px-6  py-1 px-lg-7">
		<!-- 햄버거 메뉴 -->
		<%@include file="../include/category.jsp" %>
		
		<a class="navbar-brand" href="/">전통이酒</a>
		<!-- 검색창 -->
		<div id=search2>
		<form id="search-content" action="../product/search" method="get">
			<div name="searchType" id="search">
				<input type="text" name="keyword" value="${keyword}" class="searchinput" id="search-input">
				<button type="reset" class="search" id="search-btn"></button>
			</div>
		</form>
		</div>
		<!-- 사용자 메뉴 -->
		<div id="userMenu">
			<c:choose>
				<c:when test="${member == null}">
					<a href="/member/order"><img src="../resources/images/myPage.png" id="icon-mypage" /></a>
					<a href="/order/cart"><img src="../resources/images/cart.gif"id="icon-cart" /></a>
				</c:when>
				<c:otherwise>
					<c:if test="${member.verify == 9}">
						<a href="/admin/order/orderList"><img
							src="../resources/images/admin.png"></a>
					</c:if>
					<a href="/member/order"><img src="../resources/images/myPage.png"
						id="icon-mypage" /></a>
					<a href="/order/cart"><img src="../resources/images/cart.gif"
						id="icon-cart" /></a>
					<!-- <span class="badge bg-dark text-white ms-1 rounded-pill">0</span> -->
				</c:otherwise>
			</c:choose>
		</div>
	</div>
</nav>
</body>
<script src="../resources/js/homescripts.js"></script>