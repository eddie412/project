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
	<input type="hidden" name="no" value="${order.no}" />
	
		<div class="inputArea">
			<label for="no">주문번호</label>
			<span>${order.no}</span>
		</div>
		<div class="input_area">
			<label for="name">주문자</label>
			<input type="text" id="name" name="name" value="${order.name}"/>
		</div>
		<div class="input_area">
			<label for="addr">배송지</label>
			<input type="text" id="addr" name="addr" value="${order.addr}"/>
		</div>
		<div class="input_area">
			<label for="phone">전화번호</label>
			<input type="text" id="phone" name="phone" value="${order.phone}"/>
		</div>
		<div class="input_area">
			<label for="pName">상품명</label>
			<input type="text" id="pName" name="pName" value="${order.pName}"/>
		</div>
		<div class="input_area">
			<label for="count">수량</label>
			<input type="text" id="count" name="count" value="${order.count}"/>
		</div>
		<div class="input_area">
			<label for="oDate">주문일</label>
			<span>${order.oDate}</span> 
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