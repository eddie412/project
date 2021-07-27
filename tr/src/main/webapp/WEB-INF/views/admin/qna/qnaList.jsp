<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
			<th>문의번호</th>
			<th>제목</th>
			<th>작성자</th>
			<th>작성날짜</th>
		</tr>
	<c:forEach var="qna"  items="${qnaList}">
		<tr>
			<td><a href="qnaView?n=${qna.qNo}">${qna.qNo}</a></td>
			<td>${qna.qTitle}</td>
			<td>${qna.qWriter}</td>
			<td>${qna.qDate}</td>
		</tr>
	</c:forEach>	
	</table>
</body>
</html>