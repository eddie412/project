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
<form method="POST" action="orderComplete" name="frm">
<div id="orderMain">
<span>주문서</span>
<div>
<p>주문상품</p>
<table> 
<c:forEach var="i" begin="0" end="${num-1}" >
<c:set var="item" value="item${i}"/>
	<input type="hidden"  name="cId" value="${order[item].cId}">
	<tr>
		<td><img src="../resources/images/${order[item].pImg}"	alt="${order[item].pName} 이미지" ></td>
		<td>${order[item].pName}</td>
		<td>${order[item].count}개</td>
		<td><fmt:formatNumber pattern="###,###,###"	value="${order[item].count * order[item].pPrice}" />원</td>
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
<label>받는 분</label>
<input type="text"  placeholder="이름을 입력해주세요." name="rName" id="rName"><br>
<label>배송지 주소</label>
<input type="text"  placeholder="주소를 입력해주세요." name="rAddr" id="rAddr"><br>
<label>연락처</label>
<input type="text"  placeholder="연락처를 입력해주세요." name="rPhone" id="rPhone" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" ><br>
<label>요청사항</label>
<textarea placeholder="요청사항을 입력해주세요." name="oMemo" id="oMemo" rows="5" cols="30"></textarea><br>
<input type="button" name="userInfo" id="userInfo" value="사용자 정보 불러오기"/>
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
		<c:set var="item" value="item${i}"/>
		<tr>
			<td>┕ ${order[item].pName}</td>
			<td>
				<fmt:formatNumber pattern="###,###,###"	value="${order[item].count * order[item].pPrice}" />원
			</td>
		</tr>
		</c:forEach>
	</tr>
</table>
</div>

<div>
	<input type="submit" value="결제하기" onclick="return orderCheck()">
</div>

	<script type="text/javascript">
	$("#userInfo").click(function(){
		document.getElementById("rName").value = '${order.item0.userName}';
		document.getElementById("rAddr").value = '${order.item0.userAddr}';
		document.getElementById("rPhone").value = '${order.item0.userPhone}';
	});
	
	function orderCheck(){
		if(document.frm.rName.value == ""){
			alert("받는분을 입력해주세요.");
			frm.rName.focus();
			return false;
		}
		if(document.frm.rAddr.value == ""){
			alert("받는분 주소를 입력해주세요.");
			frm.rAddr.focus();
			return false;
		}
		if(document.frm.rPhone.value.length == 0){
			alert("받는분 연락처를 입력해주세요.");
			frm.rPhone.focus();
			return false;
		}else if(document.frm.rPhone.value.length != 11){
			alert("11자리를 입력해주세요.");
			frm.rPhone.focus();
			return false;
		}
	}
	</script>

</div>
</form>
</body>
</html>