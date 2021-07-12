<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript">
//숫자만 입력
var replaceNotInt = /[^0-9]/gi;

$(document).ready(function(){
    
    $("#userPhone").on("focusout", function() {
        var x = $(this).val();
        if (x.length > 0) {
            if (x.match(replaceNotInt)) {
               x = x.replace(replaceNotInt, "");
            }
            $(this).val(x);
        }
    }).on("keyup", function() {
        $(this).val($(this).val().replace(replaceNotInt, ""));
    });

});

function updateCheck(){
	let check = -1;
	
	if(check == -1){
		if(document.frm.userName.value == ""){
			alert("이름을 입력해주세요.")
			frm.userName.focus();
			return false;
		}
		
		if(document.frm.userPass.value == ""){
			alert("비밀번호를 입력해주세요.");
			frm.userPass.focus();
			return false;
		}else if(document.frm.userPass.value < 4){
			alert("비밀번호는 4글자 이상입니다.");
			frm.userPass.focus();
			return false;
		}else if(document.frm.userPass.value == document.frm.passCheck.value){
			alert("기존 비밀번호와 동일합니다. 다시 확인해주세요.");
			frm.userPass.focus();
			return false;
		}
		
		if(document.frm.userEmail.value == ""){
			alert("이메일을 입력해주세요.");
			frm.userEmail.focus();
			return false;
		}
		
		if(document.frm.userPhone.value == ""){
			alert("전화번호를 입력해주세요.");
			frm.userPhone.focus();
			return false;
		}else if(document.frm.userPhone.value.length != 11){
			alert("11자리를 입력해주세요.");
			frm.userPhone.focus();
			return false;
		}
		
		if(document.frm.userAddr.value == ""){
			alert("주소를 입력해주세요.");
			frm.userAddr.focus();
			return false;
		}
		
		check = 1;
	}else if(check == 1){
		alert("정보 수정되었습니다.");
		return true;
	}
	
	
}
</script>
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

#main, #main td, #main th {
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

	<h2 align="center">회원정보수정</h2>
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
	<form method="post" action="mp_update" name="frm">
		<table id="main" align="right">
			<tr>
				<th>이름</th>
				<td><input type="text" id="userName"  name="userName"value="${userName}"></td>
			</tr>
			<tr>
				<th>아이디</th>
				<td><input type="text" id="userId"  name="userId" value="${userId}"	 readonly="readonly"></td>
			</tr>
			<tr>
				<th>비밀번호</th>
				<td>
					<input type="text" id="userPass" name="userPass" value="${userPass}">
					<input type="hidden"  id="passCheck" value="${userPass}">
				</td>
			</tr>
			<tr>
				<th>이메일</th>
				<td><input type="email" id="userEmail" name="userEmail" value="${userEmail}"></td>
			</tr>
			<tr>
				<th>휴대폰번호</th>
				<td><input type="text" id="userPhone" name="userPhone" value="${userPhone}"></td>
			</tr>
			<tr>
				<th>주소</th>
				<td><input type="text" id="userAddr" name="userAddr" value="${userAddr}" ></td>
			</tr>
			<tr>
				<th>생년월일</th>
				<td><input type="date" id="userBday" name="userBday" value="${userBday}" /></td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="button" value="취소" onclick="location.href='home'"> 
					<input type="submit" value="수정" onclick="return updateCheck()">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>