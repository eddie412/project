<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>로그인</h1>
	<form role="form" method="post" action="/member/login">
		<div class = userId>
			<label for="userId">아이디:  </label>
   			<input type="text" id="userId" name="userId" required="required" />
		</div>
		
		<div class =userPass>
			<label for="userPass">비밀번호: </label>
   			<input id="userPass" name="userPass" required="required" />
		</div>
		
		<button type="submit" id="login_btn" name="login_btn">로그인</button>
	</form>
</body>
</html>