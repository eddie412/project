<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Product Update</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.2.0.min.js" ></script>
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
	<h2>회원 수정</h2>
	<form role="form" method="post" action="memberModify">
	<input type="hidden" name="userId" value="${member.userId}" />
	
		<div class="input_area">
			<label for="userId">아이디</label>
			<span> ${member.userId}</span>
		</div>
		<div class="input_area">
			<label for="userName">이름</label>
			<input type="text" id="userName" name="userName" value="${member.userName}"/>
		</div>
		<div class="input_area">
			<label for="userEmail">이메일</label>
			<input type="text" id="userEmail" name="userEmail" value="${member.userEmail}"/>
		</div>
		<div class="input_area">
			<label for="userPhone">연락처</label>
			<input type="text" id="userPhone" name="userPhone" value="${member.userPhone}"/>
		</div>
		<div class="input_area">
			<label for="userAddr">주소</label>
			<input type="text" id="userAddr" name="userAddr" value="${member.userAddr}"/>
		</div>
		<div class="input_area">
			<label for="userBday">생년월일</label>
			<input type="text" id="userBday" name="userBday" value="${member.userBday}"/> 
		</div>
		
		<div class="input_area">
			<button type="submit" id="update_btn" class="btn btn-success">완료</button>
			<button type="button" id="back_btn" class="btn-warning">취소</button>
		
			<script>
				$("#back_btn").click(function(){
					history.back();
				});
			</script>	
		</div>
	</form>
</body>
</html>