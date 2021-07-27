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
	
	<H2>주문번호: ${no.oId}</H2>
	<span>받는분: ${no.rName}</span><br>
	<span>받는분 주소: ${no.rAddr}</span><br>
	<span>받는분 번호: ${no.rPhone}</span><br>
	<span>요청사항: ${no.oMemo}</span><br>
	<span>주문날짜: <fmt:formatDate value="${no.oDate}" pattern="yyyy.MM.dd"/></span><br>
	<span>총구매금액: <fmt:formatNumber pattern="###,###,###"
						value="${total}" /></span>
	<c:forEach var="orderDetail" items="${orderDetail}">
		<table>
			<tr>
				<th>상품이름</th>
				<td>${orderDetail.pName}</td>
			</tr>
			<tr>
				<th>상품이미지</th>
				<td><img src="../resources/images/${orderDetail.pImg}"
					alt="${orderList.pName} 이미지"></td>
			</tr>
			<tr>
				<th>상품정보</th>
				<td>${orderDetail.pInfo}</td>
			</tr>
			<tr>
				<th>상품가격</th>
				<td><fmt:formatNumber pattern="###,###,###"
						value="${orderDetail.pPrice}" />원</td>
			</tr>
			<tr>
				<th>수량</th>
				<td>${orderDetail.count}개</td>
			</tr>
			<tr>
				<th>주문상태</th>
				<td>${orderDetail.delivery}</td>
			</tr>
			<tr>
				<th>금액</th>
				<td><fmt:formatNumber pattern="###,###,###"
						value="${orderDetail.oTotal}" />원</td>
			</tr>
			----------------------------------------------------------------
		</table>
	</c:forEach>

</body>
</html>