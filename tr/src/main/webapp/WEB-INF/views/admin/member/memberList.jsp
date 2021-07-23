<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>멤버 목록</title>
<style type="text/css">
</style>

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
	<table>
		<tr>
			<th>아이디</th>
			<th>이름</th>
			<th>이메일</th>
			<th>연락처</th>
			<th>주소</th>
			<th>생년월일</th>
		</tr>
	<c:forEach var="member"  items="${memberList}">
		<tr>
			<td><a href="memberView?n=${member.userId}">${member.userId}</a></td>
			<td>${member.userName}</td>
			<td>${member.userEmail}</td>
			<td>${member.userPhone}</td>
			<td>${member.userAddr}</td>
			<td>${member.userBday}</td>
		</tr>
	</c:forEach>	
	</table>
</body>
</html>