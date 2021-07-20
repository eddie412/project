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

	<c:forEach var="orderDetail" items="${orderDetail}">
		<table>
			<tr>
				<th>주문번호</th>
				<td>${orderDetail.oId}</td>
			</tr>
			<tr>
				<th>받는분</th>
				<td>${orderDetail.rName}</td>
			</tr>
			<tr>
				<th>받는분주소</th>
				<td>${orderDetail.rAddr}</td>
			</tr>
			<tr>
				<th>받는분번호</th>
				<td>${orderDetail.rPhone}</td>
			</tr>
			<tr>
				<th>요청사항</th>
				<td>${orderDetail.oMemo}</td>
			</tr>
			<tr>
				<th>주문날짜</th>
				<td><fmt:formatDate value="${orderDetail.oDate}"
						pattern="yyyy.MM.dd" /></td>
			</tr>
			<tr>
				<th>총금액</th>
				<td><fmt:formatNumber pattern="###,###,###"
						value="${orderDetail.oTotal}" />원</td>
			</tr>
			<tr>
				<th>주문상태</th>
				<td>${orderDetail.oState}</td>
			</tr>
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
		</table>
	</c:forEach>

</body>
</html>