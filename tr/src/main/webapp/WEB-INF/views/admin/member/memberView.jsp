<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Member Update</title>
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
	<h2>회원 조회</h2>
	<form role="form" method="post" autocomplete="off">
	<input type="hidden" name="n" value="${member.userId}" />
	
		<div class="inputArea">
			<label for="userId">아이디</label>
			<span> ${member.userId}</span>
		</div>
		<div class="input_area">
			<label for="userName">이름</label>
			<span> ${member.userName}</span>
		</div>
		<div class="input_area">
			<label for="userEmail">이메일</label>
			<span> ${member.userEmail}</span>
		</div>
		<div class="input_area">
			<label for="userPhone">연락처</label>
			<span> ${member.userPhone}</span>
		</div>
		<div class="input_area">
			<label for="userAddr">주소</label>
			<span> ${member.userAddr}</span>
		</div>
		<div class="input_area">
			<label for="userBday">생년월일</label>
			<span> ${member.userBday}</span>
		</div>
		
		<div class="input_area">
			<button type="button" id="modify_btn" class="btn btn-warning">수정</button>
			<button type="button" id="delete_btn" class="btn btn-danger">삭제</button>
			<button type="reset" onclick="location.href='memberList'">취소</button>
			
			<script>
				var formObj = $("form[role='form']");
				
				$("#modify_btn").click(function(){
					formObj.attr('action','memberModify');
					formObj.attr('method','get');
					formObj.submit();					
				});
				
				$("#delete_btn").click(function(){
					
					var con =confirm("삭제하시겠습니까?");
					
					if(con){
						formObj.attr('action','memberDelete');
						formObj.submit();	
					}	
				});
			</script>
		</div>
	</form>
</body>
</html>







