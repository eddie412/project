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

<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(e){
		    genRowspan("row");
		  genRowspan("date");
	});
		 
	function genRowspan(className){
	    $("." + className).each(function() {
	        var rows = $("." + className + ":contains('" + $(this).text() + "')");
	        if (rows.length > 1) {
	            rows.eq(0).attr("rowspan", rows.length);
	            rows.not(":eq(0)").remove();
	        }
	    });
	}
</script>


<body>
	<!-- 헤드 -->
	<header>
		<div id="header_box">
			<%@ include file="../include/header.jsp"%>
		</div>
	</header>

	<h2 align="center">주문상세내역</h2>
	<!-- 사이드 메뉴 -->
	<%@ include file="../include/mypageNav.jsp"%>

	<!-- 메인 -->
	<table id="main" align="right">
		<tr>
			<th>주문날짜</th>
			<th>주문번호</th>
			<th>상품이미지</th>
			<th>상품명</th>
			<th>가격</th>
			<th>수량</th>
			<th>총 금액</th>
			<th>주문상태</th>
		</tr>
		<c:if test="${empty order}">
			<td colspan="7">상품을 구매한적이 없습니다.</td>
		</c:if>
		<tbody>
			<c:forEach var="order" items="${order}">
				<tr>
					<td class="date"><fmt:formatDate value="${order.oDate}" pattern="yyyy.MM.dd" /></td>
					<td class="row"><a href='mpOrderDetail?oId=${order.oId}'>${order.oId}</a></td>
					<td>
						<a href='/product/product?pno=${order.pNo}'>
						<img src="../resources/images/${order.pImg}" alt="${order.pName} 이미지"></a>
					</td>
					<td>${order.pName}</td>
					<td><fmt:formatNumber pattern="###,###,###" value="${order.pPrice}" />원</td>
					<td>${order.count}개</td>
					<td><fmt:formatNumber pattern="###,###,###" value="${order.pPrice * order.count}" />원</td>
					<td>${order.delivery}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>	