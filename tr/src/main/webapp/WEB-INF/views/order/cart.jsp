<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>장바구니</title>
</head>
<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
<style type="text/css">
#main {
	width: 80%;
	margin: auto;
	text-align: center;
}

#main, #main th, #main td {
	border: 1px solid gray;
	border-collapse: collapse;
}

#main th {
	background: #B28EF7;
}

#main th:first-child {
	width: 5%;
}

input[type="checkbox"] {
	zoom: 1.5;
}

.img {
	float: left;
	width: 200px;
	height: auto;
	overflow: hidden;
	clear: both;
	object-fit: cover;
}
input[type="button"] {
	border:0; 
	background:#E2BBF3; 
	cursor:pointer;
}
</style>
<body>
	<!-- 헤드 -->
	<header>
		<div id="header_box">
			<%@ include file="../include/header.jsp"%>
		</div>
	</header>

	<h2 align="center">장바구니</h2>

	<!-- 메인 -->
	<form method="get" action="/order/order" role="frm">
		<table id="main" align="center">
			<tr>
				<th><input type="checkbox" name="allCheck" id="allCheck" /></th>
				<th>상품정보</th>
				<th>수량</th>
				<th>상품금액</th>
				<th>삭제</th>
			</tr>
			<c:choose>
				<c:when test="${cart.itemsYN == 0}">
					<tr>
						<td colspan="5">장바구니에 상품이 담겨있지 않습니다.</td>
					</tr>
				</c:when>
				<c:otherwise>
					<c:forEach var="cart" items="${cart.items}">
						<tr>
							<td>
								<input type="checkbox" name="cId"  class="itemCheck"	 onclick="itemSum()" value="${cart.cId}"> 
								<input type="hidden" class="itemSum"	value="${cart.count * cart.pPrice}">
							</td>
							<td>
								<div>
									${cart.pName}<br>
									<fmt:formatNumber pattern="###,###,###" value="${cart.pPrice}" />원<br>
								</div> 
								<img src="../resources/images/${cart.pImg}"	alt="${cart.pName} 이미지" class="img">
							</td>
							<td>${cart.count}개</td>
							<td class="sum">
								<fmt:formatNumber pattern="###,###,###"  value="${cart.count * cart.pPrice}" />원</td>
							<td>
								<!-- <a href="/shop/delete?cId=${cart.cId}" class="deleteCon">삭제</a> -->
								<a href="deleteItem?cId=${cart.cId}" onclick="return confirm('선택하신 상품을 삭제하시겠습니까?')"><input type="button" value="삭제"></a>
							</td>
						</tr>
					</c:forEach>
				</c:otherwise>
			</c:choose>
			<tr>
				<th colspan="2">총합</th>
				<td colspan="3" style="font-weight: bold; color: #8D2D54;" id="total" value="${sum}" >0원</td>
			</tr> 
		</table>
		<div>
			<input type="button" value="쇼핑 계속하기" onclick="location.href='/'">
			<input type="button" value="전체 삭제" class="deleteAll"> 
			<input type="button" value="주문하기" onclick="check()">
		</div>

<script type="text/javascript">

	//주문하기
	function check(){
		var all = $(".itemCheck").length;
		var count = 0;
	
		for (var i = 0; i < all; i++) {
			if($(".itemCheck")[i].checked == true){
				++count;
			}
		}

		if (count == 0) {
			alert("주문하실 상품을 선택해주세요.");
		}else{
			$("form[role='frm']").submit();
		}		
	}	

	//상품 전체삭제
	$(".deleteAll").click(function() {
		var count = $(".itemCheck").length;
		if (count == 0) {
			alert("상품이 없습니다. 장바구니에 상품을 담아주세요.");
		} else {
			var result = confirm("상품을 전체 삭제하시겠습니까?");

			if (result) {
				location.href = "/order/deleteAll";
			}
		}
	});

	//전체 체크박스 선택/해제
	$("#allCheck").click(function() {
		var chk = $("#allCheck").prop("checked");
		if (chk) {
			$(".itemCheck").prop("checked", true);
			itemSum();
		} else {
			$(".itemCheck").prop("checked", false);
			itemSum();
		}
	});

	//선택한 상품 가격 총합
	function itemSum() {
		
		var str = "";
		var sum = 0;
		var count = $(".itemCheck").length;

		for (var i = 0; i < count; i++) {
			if ($(".itemCheck")[i].checked == true) {
				sum += parseInt($(".itemSum")[i].value);
			}
		}

		$("#total").html(sum.toLocaleString('ko-KR') + "원");



	//체크 박스 하나 해제시 전체 체크박스 해제
	$(".itemCheck").click(function() {
		$("#allCheck").prop("checked", false);
	});	
}
	
</script>
	</form>
</body>
</html>