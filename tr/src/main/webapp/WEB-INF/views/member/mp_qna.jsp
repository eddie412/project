<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지</title>
</head>
<style type="text/css">
#main {
	position: fixed;
	width: 80%;
	margin-left: 250px;
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

#sidemenu {
	width: 20%;
	height: 80%;
}

#sidemenu>ul {
	list-style: none;
}

#sidemenu  li {
	display: table-cell;
	color: black;
	line-height: 100px;
}

#sidemenu  a {
	color: black;
}

#sidemenu  a:visited {
	color: black;
}

#sidemenu a:hover {
	color: #6C28F0;
}
</style>
<body>
	<!-- 헤드 -->
	<header>
		<div id="header_box">
			<%@ include file="../include/header.jsp"%>
		</div>
	</header>

	<h2 align="center">문의사항</h2>
	<!-- 사이드 메뉴 -->
	<div id="sidemenu">
		<h3 style="padding-left: 60px">마이페이지</h3>
		<ul align="center">
			<li><a href="mp_order">주문상세내역</a></li>
			<li><a href="mp_qna">문의사항</a></li>
			<li><a href="mp_update">회원정보수정</a></li>
			<li><a href="mp_deleteview">탈퇴하기</a></li>
		</ul>
	</div>

	<!-- 메인 -->
	<table id="main" align="right">
		<tr>
			<th>날짜</th>
			<th>제목</th>
			<th>내용</th>
		</tr>
		<c:if test="${empty qna}">
			<td colspan="3">작성한 문의사항이 없습니다.</td>
		</c:if>
		<c:forEach var="qna" items="${qna}">
			<tr>
				<td><fmt:formatDate value="${qna.qDate}" pattern="yyyy.MM.dd" /></td>
				<td>${qna.qTitle}</td>
				<td>${qna.qContent}</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>