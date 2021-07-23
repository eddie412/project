<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>OrderList</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.2.0.min.js" ></script>
<link rel="stylesheet" type="text/css" href="../../resources/adminStyle.css">
</head>
<body>
	<header id="header">
		<div id="header_box">
			<%@ include file="../../include/header.jsp"%>
		</div>
	</header>
	<nav>
		<%@ include file="../aside.jsp"%>
	</nav>
	<br><hr>
	<ul class="orderList">
		<c:forEach var="order"  items="${orderList}" varStatus="status">
			<c:if test="${status.first}">
				<p><span>주문번호 </span><a href="orderView?oId=${order.oId}">${order.oId}</a></p>
				<p><span>주문자 </span>${order.userName}</p>
				<p><span>배송지 </span>${order.rAddr}</p>
				<p><span>전화번호 </span>${order.rPhone}</p>
				<p><span>상품명 </span>${order.pName}</p>
				<p><span>수량 </span>${order.count}</p>
				<p><span>주문일 </span><fmt:formatDate pattern="yyyy-MM-dd"	value="${order.oDate}"/></p>
				<p><span>상태 </span>${order.delivery}</p>
			

			<div class="orderChange">
			<form action="orderList" method="post" id="${order.oId}">
				
				<input type="hidden" name="oId" value="${order.oId}"/>
				<input type="hidden" name="delivery" class="delivery" value="" />
				
				<button type="button" class="change1_btn" onclick="change1_btn(${order.oId})">배송 중</button>
				<button type="button" class="change2_btn" onclick="change2_btn(${order.oId})">배송 완료</button>
				
				<script type="text/javascript">
					function change1_btn(id){
						$(".delivery").val("배송중");
						document.getElementById(id).submit();
					}
					function change2_btn(id){
						$(".delivery").val("배송완료");
						document.getElementById(id).submit();
					}
				</script>
				</form>
			</div>
			</c:if>
		</c:forEach>
	</ul>
	
</body>
</html>