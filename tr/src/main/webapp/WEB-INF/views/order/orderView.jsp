<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
<form method="POST" action="order">
<div id="orderMain">
<span>주문서</span>
<div>
<p>주문상품</p>
<table> 
<c:forEach var="i" begin="0" end="${num-1}" >
<c:set var="list" value="list${i}"/>
	<input type="hidden"  name="cId" value="${order[list].cId}">
	<tr>
		<td><img src="../resources/images/${order[list].pImg}"	alt="${order[list].pName} 이미지" ></td>
		<td>${order[list].pName}</td>
		<td>${order[list].count}개</td>
		<td><fmt:formatNumber pattern="###,###,###"	value="${order[list].count * order[list].pPrice}" />원</td>
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
<td><input type="text"  placeholder="이름을 입력해주세요." name="rName" id="rName"></td>
</tr>
<tr>
<th>배송지 주소</th>
<td><input type="text"  placeholder="주소를 입력해주세요." name="rAddr" id="rAddr"></td>
</tr>
<tr>
<th>연락처</th>
<td><input type="text"  placeholder="숫자를 입력해주세요." name="rPhone" id="rPhone"></td>
</tr>
<tr>
<th>배송메모</th>
<td><input type="text"  placeholder="요청사항을 입력해주세요." name="oMemo" id="oMemo" ></td>
</tr>
</table>
</div>

<div>
<p>결제 금액</p>
<table>
	<tr>
		<th>최종결제 금액</th>
		<td>
			<fmt:formatNumber pattern="###,###,###"	value="${total}"  />원
			<input type="hidden"  name="oTotal" value="${total}">
		</td>
		
	</tr>
	<tr>
		<th>상품 금액</th>
		<c:forEach var="i" begin="0" end="${num-1}" >
		<c:set var="list" value="list${i}"/>
		<tr>
			<td>┕ ${order[list].pName}</td>
			<td>
				<fmt:formatNumber pattern="###,###,###"	value="${order[list].count * order[list].pPrice}" />원
			</td>
		</tr>
		</c:forEach>
	</tr>
</table>
</div>

<div>
	<input type="submit" value="결제하기" >
</div>
</div>
</form>
</body>
</html>