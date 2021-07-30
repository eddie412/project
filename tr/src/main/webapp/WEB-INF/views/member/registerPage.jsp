<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<!-- Core theme CSS (includes Bootstrap)-->
<link href="../../resources/css/sb-admin-2.css" rel="stylesheet" />
<!-- Font -->
<link
	href="https://fonts.googleapis.com/css2?family=East+Sea+Dokdo&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=East+Sea+Dokdo&family=Noto+Sans+KR:wght@300&display=swap"
	rel="stylesheet">
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript">
	function fn_idChk() {
		$.ajax({
			url : "/member/idChk",
			type : "post",
			dataType : "json",
			data : {
				"userId" : $("#userId").val()
			},
			success : function(data) {
				if (data == 1) {
					alert("중복된 아이디입니다.");
				} else if (data == 0) {
					$("#idChk").attr("value", "Y");
					alert("사용가능한 아이디입니다.");
				}
			}
		})
	}
	function fn_ageChk() {
		const userBday = new Date($("#userBday").val());
		const today = new Date();

		let age = today.getFullYear() - userBday.getFullYear();
		console.log(age);

		if (age > 19) {
			alert("가입이 가능합니다.");
			$("#submit").removeAttr('disabled');
		} else
			(age < 19)
		{
			alert("미성년자는 가입이 불가능 합니다.");
		}
	}
</script>
<title>register</title>
</head>
<body class="bg-gradient-primary">
	<div class ="container" style="margin-top:8rem;margin-left:23rem;">
	<div class="col-xl-10 col-lg-12 col-md-9"> 
	<div class="card o-hidden border-0 shadow-lg my-5">
	<div class="card-body p-0">
	<div class="row">
			<div class="col-lg-6 d-none d-lg-block bg-login-image">
				<img src="../resources/images/login.PNG" class="logImg">
			</div>
			<div class="col-lg-6">
			<div class="p-5">
					<div class="text-center">
						<h1 class="h4 text-gray-900 mb-4">회원가입</h1>
					</div>
		<form role="form" method="post" autocomplete="off" class="user">
			<table>
				<tr>
					<th><label for="userId">아이디</label></th>
					<td><input id="userId" name="userId"required="required" /></td>
					<td><button class="idChk" type="button" id="idChk" onclick="fn_idChk();"value="N">중복체크</button></td>
				</tr>
				<tr>
					<th><label for="userPass">비밀번호</label> </th>
					<td><input type="password"
					id="userPass" name="userPass" required="required" /></td>
				</tr>
				<tr>
					<th><label for="userName">이름</label></th>
					<td><input type="text" id="userName"
					name="userName" required="required" /></td>
				</tr>
				<tr>
					<th><label for="userEmail">이메일</label></th>
					<td><input type="email"
					id="userEmail" name="userEmail" required="required" /></td>
				</tr>
				<tr>
					<th><label for="userPhone">휴대폰 번호</label></th>
					<td><input type="tel"
					id="userPhone" name="userPhone" placeholder="숫자만 입력해주세요"
					required="required" /></td>
				</tr>
				<tr>
					<th><label for="userAddr">주소</label></th>
					<td><input type="text" id="userAddr"
					name="userAddr" required="required" /></td>
				</tr>
				<tr>
					<th><label for="userBday">생년월일</label></th>
					<td><input type="date" id="userBday"
					name="userBday" placeholder="미성년자는 회원가입 불가" /></td>
					<td><button class="ageChk" type="button" id="ageChk"
					onclick="fn_ageChk();" value="N">나이체크</button></td>
				</tr>
					
			</table>
			<br>
			<div style="text-align:center;">
			<button class="btn btn-success" type="submit" id="submit"
				disabled=true>회원가입</button>
			<button class="cencle btn btn-danger" type="button" onclick="javascript:history.go(-1)">취소</button>
			</div>
		</form>
	</div>
	</div>
	</div>
	</div>
	</div>
	</div>
	</div>
</body>
</html>