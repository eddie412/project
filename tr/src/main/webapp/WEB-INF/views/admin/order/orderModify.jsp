<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Product Update</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.2.0.min.js" ></script>
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
	<h2>주문 수정</h2>
	<form role="form" method="post" action="orderModify">
	<input type="hidden" name="oId" value="${order.oId}" />
	
		<div class="inputArea">
			<label for="oId">주문번호</label>
			<span>${order.oId}</span>
		</div>
		--------------- 주문자정보 ----------------
		<div class="inputArea">
			<label for="userName">주문자</label>
			<span> ${order.userName}</span>
		</div>
		<div class="input_area">
			<label for="phone">연락처</label>
			<span> ${order.userPhone}</span>
		</div>
		-------------- 받는사람정보 --------------
		<div class="inputArea">
			<label for="rName">받는 사람</label>
			<input type="text" id="rName" name="rName" value="${order.rName}"/>
		</div>
		<div class="input_area">
			<label for="rPhone">연락처</label>
			<input type="text" id="rPhone" name="rPhone" value="${order.rPhone}"/>
		</div>
		-------------- 배송정보 --------------
		<div class="input_area">
			<label for="rAddr">배송지</label>
			<input type="text" id="rAddr" name="rAddr" value="${order.rAddr}"/>
		</div>
		<div class="input_area">
			<label for="pName">상품명</label>
			<span> ${order.pName}</span>
		</div>
		<div class="input_area">
			<label for="count">수량</label>
			<input type="text" id="count" name="count" value="${order.count}"/>
		</div>
		<div class="input_area">
			<label for="oDate">주문일</label>
			<span> ${order.oDate}</span>
		</div>
		<div class="input_area">
			<label for="delivery">상태</label>
			<span>${order.delivery}</span>
		</div>
		
		<div class="input_area">
			<button type="submit" id="update_btn" class="btn btn-success">완료</button>
			<button type="button" id="back_btn" class="btn-warning">취소</button>
		
			<script>
				$("#back_btn").click(function(){
					history.back();
				});
			</script>	
		</div>
	</form>
</body>
</html>