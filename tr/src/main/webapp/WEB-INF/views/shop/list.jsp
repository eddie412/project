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

.btn_count {
	background: #F2E3FC;
	border: none;
	margin: 0px 15px;
	font-size: 18px;
}

.img {
	float: left;
	width: 200px;
	height: auto;
	overflow: hidden;
	clear: both;
	object-fit: cover;
}
</style>
<script type="text/javascript">
	//상품 선택 시 합계 노출
	function itemSum() {
		var count = $(".itemCheck").length;
		for (var i = 0; i < count; i++) {
			if ($(".itemCheck")[i].checked == true) {
				sum += parseInt($(".itemCheck")[i].value);
			}
		}

		$("#total").html(sum + "원");
	}

	//상품수량 변경
	function a() {
		alert("옙!");
	}
</script>
<body>
	<!-- 헤드 -->
	<header>
		<div id="header_box">
			<%@ include file="../include/header.jsp"%>
		</div>
	</header>

	<h2 align="center">장바구니</h2>

	<!-- 메인 -->
	<%-- <form>
		<table id="main" align="center">
			<tr>
				<th><label>전체선택<input type="checkbox" name="allCheck" id="allCheck" /></label></th>
				<th colspan="2">상품정보</th>
				<th>상품가격</th>
				<th>상품수량</th>
				<th>상품총액</th>
			</tr>
			<c:if test="${empty cart}">
				<td colspan="6">장바구니에 상품이 담겨있지 않습니다.</td>
			</c:if>
			<c:forEach var="cart" items="${cart}">
				<tr>
					<td><input type="checkbox"  id="cNo" class="itemCheck" value="${cart.cTotal}"  onclick="itemSum()"></td>
					<td colspan="2"><span
						style="font-size: 16px; color: #F0B928; font-weight: bold;" >[상품명]${cart.cName}</span><br>${cart.cInfo}</td>
					<td>${cart.cPrice}원</td>
					<td><input type="button" value="-" class="btn_count" >${cart.cCount}<input type="button" value="+" class="btn_count"></td>
					<td>${cart.cTotal}원</td>
				</tr>
			</c:forEach>
			<tr>
				<th colspan="3">총액</th>
				<td colspan="3"  id="total_sum" >0원</td>
			</tr>
			<tr>
				<td colspan="6"  align="center">
					<input type="button" value="쇼핑 계속하기"> 
					<input type="button" value="삭제하기" onclick="location.href='/shop/delete'"> 
					<input type="submit" value="주문하기">
				</td>
			</tr>
		</table>
	</form> --%>
	<form>
		<table id="main" align="center">
			<tr>
				<th><input type="checkbox" name="allCheck" id="allCheck" /></th>
				<th>상품정보</th>
				<th>수량</th>
				<th>상품금액</th>
			</tr>
			<c:choose>
				<c:when test="${cart.listYN == 0}">
					<tr>
						<td colspan="4">장바구니에 상품이 담겨있지 않습니다.</td>
					</tr>
				</c:when>
				<c:otherwise>
					<c:forEach var="item" items="${cart.list}">
						<tr>
							<td><input type="checkbox" class="itemCheck" value="${}"
								onclick="itemSum()"></td>
							<td>
								<div>
									${item.pName}<br>
									<fmt:formatNumber pattern="###,###,###" value="${item.pPrice}" />원<br>
								</div>
								 <img src="../resources/images/${item.pImg}" alt="상품이미지"	class="img">
							</td>
							<td>${item.count}개</td>
							<td><fmt:formatNumber pattern="###,###,###" value="${item.count * item.pPrice}" />원</td>
						</tr>
					</c:forEach>
				</c:otherwise>
			</c:choose>
			<tr>
				<th colspan="2">총합</th>
				<td colspan="2" style="color:#8D2D54;" id="total">0원</td>
			</tr>
		</table>
	</form>

	<script type="text/javascript">
		//상품 전체 선택
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

		//체크박스 하나라도 uncheck면 전체선택 해제
		$(".itemCheck").click(function() {
			$("#allCheck").prop("checked", false);
		});
	</script>

</body>
</html>