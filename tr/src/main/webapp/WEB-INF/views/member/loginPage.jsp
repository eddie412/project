<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login</title>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<body>
	<h1>로그인</h1>
	<form name="form" method="post" action="/member/login">
		<c:if test="${member == null}">
			<div>
				<label for="userId">아이디:  </label>
   				<input type="text" id="userId" name="userId" />
			</div>
		
			<div>
				<label for="userPass">비밀번호: </label>
   				<input type ="password" id="userPass" name="userPass" />
			</div>
			<div>
				<button type="button" id="register_btn" onclick="location.href='registerPage'">회원가입</button>
				<button type="submit" id="login_btn" name="login_btn">로그인</button>
			</div>
		</c:if>
		<c:if test="${msg == false}">
			<p style="color: red;">로그인 실패! 아이디와 비밀번호 확인해주세요.</p>
		</c:if>
	</form>
</body>
</html>