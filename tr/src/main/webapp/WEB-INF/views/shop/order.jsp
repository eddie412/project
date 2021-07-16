<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>  
<meta charset="UTF-8">
<title>주문서</title>
</head>
<style type="text/css">
#orderMain{
	margin-right: auto;
	margin-left: auto;
}
</style>
<body>
<!-- 헤드 -->
	<header>
		<div id="header_box">
			<%@ include file="../include/header.jsp"%>
		</div>
	</header>
	
<!-- 주문서  -->
<div id="orderMain">
<span>주문서</span>
<div>
<p>주문상품</p>
<table>
<c:forEach var="order"  items="${order.list}"  varStatus="status">
	<c:set var="Img" value="Img${order.sq_cart}"/>
	<tr>
		<td><img src="../resources/images/${order.img}"	alt="${order.pName} 이미지" ></td>
		<td>${order.pName}</td>
		<td>${order.count}개</td>
		<td>${order.count * order.pPrice}원</td>
	</tr>
</c:forEach>
</table>
</div>

<div>
<p>주문자 정보</p>
<table>
<tr>
<th>보내는 분</th>
<td>${userName}</td>
</tr>
<tr>
<th>전화번호</th>
<td>${userPhone}</td>
</tr>
<tr>
<th>이메일</th>
<td>${userEmail}</td>
</tr>
</table>
</div>

<div>
<p>배송지 정보</p>
<table>
<tr>
<th>받는 분</th>
<td><input type="text"  placeholder="이름을 입력해주세요." name="reName"></td>
</tr>
<tr>
<th>배송지 주소</th>
<td><input type="text"  placeholder="주소를 입력해주세요." name="reAddr"></td>
</tr>
<tr>
<th>연락처</th>
<td><input type="text"  placeholder="숫자를 입력해주세요." name="rePhone"></td>
</tr>
<tr>
<th>배송메모</th>
<td><input type="text"  placeholder="요청사항을 입력해주세요." name="reMemo"></td>
</tr>
</table>
</div>

<div>
<p>결제 금액</p>
<table>
	<tr>
		<th>최종결제 금액</th>
		<td><input type="hidden" name="ordertotal" id="ordertotal" value=""></td>
	</tr>
	<tr>
		<th>상품 금액</th>
		<td>여기에 상품 금액 입력바람</td>
	</tr>
</table>
</div>
</div>
</body>
</html>