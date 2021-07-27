<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- Core theme CSS-->
<link href="../resources/css/qnaStyle.css" rel="stylesheet" />
<title>마이페이지</title>
</head>
<body>
	<!-- 헤드 -->
	<div id="header"></div>

	<!-- 사이드 메뉴 -->
    <%@ include file="../include/mypageNav.jsp" %>

	<!-- 메인 -->
	<table id="main" align="right">
		<tr>
			<th>날짜</th>
			<th>제목</th>
			<th>내용</th>
			<th>답변</th>
		</tr>
		<c:if test="${empty qna}">
			<td colspan="3">작성한 문의사항이 없습니다.</td>
		</c:if>
		<c:forEach var="qna" items="${qna}">
				<input type="hidden" name="qNo" value="${qna.qNo}">
				<tr>
				<td><fmt:formatDate value="${qna.qDate}" pattern="yyyy.MM.dd" /></td>
				<td>${qna.qTitle}</td>
				<td><a href="../member/reply?qNo=${qna.qNo}">${qna.qContent}</a></td>
				</tr>
		</c:forEach>
	</table>
</body>
</html>