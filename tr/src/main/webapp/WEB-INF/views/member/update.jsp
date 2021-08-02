<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- sweetAlert -->
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){ 
    
    $("#reset").on("click", function(){
    	var result = swal({
			title: "정말로 취소하시겠습니끼?",
			text: "지금 취소하시면 수정된 정보는 저장이 되지 않습니다.",
			icon: "warning",
			buttons: ["아니오", "예"]
    	}).then((YES) => {
    		if(YES){
    			location.href='/'
    		}
    	})
    })

});

function updateCheck(){
	let check = -1;
	
	if(check == -1){
		if(document.frm.userName.value == ""){
			swal("경고", "이름을 입력해주세요.", "error")
			frm.userName.focus();
			return false;
		}
		
		if(document.frm.userPass.value == ""){
			swal("경고", "비밀번호를 입력해주세요.", "error")
			frm.userPass.focus();
			return false;
		}else if(document.frm.userPass.value < 4){
			swal("경고", "비밀번호는 4글자 이상입니다.", "error");
			frm.userPass.focus();
			return false;
		}else if(document.frm.userPass.value == document.frm.passCheck.value){
			swal("경고", "기존 비밀번호와 동일합니다. 다시 확인해주세요.", "error");
			frm.userPass.focus();
			return false;
		}
		
		if(document.frm.userEmail.value == ""){
			swal("경고", "이메일을 입력해주세요.", "error");
			frm.userEmail.focus();
			return false;
		}
		
		if(document.frm.userPhone.value == ""){
			swal("경고", "전화번호를 입력해주세요.", "error");
			frm.userPhone.focus();
			return false;
		}else if(document.frm.userPhone.value.length != 11){
			swal("경고", "11자리를 입력해주세요.", "error");
			frm.userPhone.focus();
			return false;
		}
		
		if(document.frm.userAddr.value == ""){
			swal("경고", "주소를 입력해주세요.", "error");
			frm.userAddr.focus();
			return false;
		}
		
		check = 1;
	}
	
	if(check == 1){
		swal("완료", "정보 수정되었습니다. \n수정된 비밀번호로 다시 접속해주시길 바랍니다.", "success");
		return true;
	}
	
	
}
</script>
<meta charset="UTF-8">
<!-- Core theme CSS-->
<link href="../resources/css/updateStyle.css" rel="stylesheet" />
<!-- font -->
<link href="https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap" rel="stylesheet">
<title>마이페이지</title>
<style>
td{
	text-align:left;
}
</style>
</head>
<body>
	<!-- 헤드 -->
	<div id="header">
		<%@include file="../include/header.jsp" %>
	</div>
	
	<!-- 사이드 메뉴 -->
    <%@ include file="../include/mypageNav.jsp" %>
    
    <!-- 메인 -->
  	<form method="post" action="update" name="frm">
   		<div id="main">
			<div class="title">마이페이지 > <span>회원정보수정</span></div>
		
			<div id="content">
				<table>
					<tr>
						<th>이름</th>
						<td style="text-align:left;"><input type="text" id="userName"  name="userName"value="${name}" ></td>
					</tr>
					<tr>
						<th>아이디</th>
						<td style="text-align:left;"><input type="text" id="userId"  name="userId" value="${userId}"	 readonly="readonly" style="border: 0px"></td>
					</tr>
					<tr>
						<th>비밀번호</th>
						<td style="text-align:left;">
							<input type="text" id="userPass" name="userPass" value="${pass}">
							<input type="hidden"  id="passCheck" value="${pass}">
						</td>
					</tr>
					<tr>
						<th>이메일</th>
						<td style="text-align:left;"><input type="email" id="userEmail" name="userEmail" value="${email}"></td>
					</tr>
					<tr>
						<th>휴대폰번호</th>
						<td style="text-align:left;"><input type="text" id="userPhone" name="userPhone" value="${phone}" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" ></td>
					</tr>
					<tr>
						<th>주소</th>
						<td style="text-align:left;"><input type="text" id="userAddr" name="userAddr" value="${addr}" style="width: 90%;"></td>
					</tr>
					<tr>
						<th>생년월일</th>
						<td style="text-align:left;"><input type="date" id="userBday" name="userBday" value="${bday}" /></td>
					</tr>
					<tr>
						<td colspan="2" id="btn" >
							<input type="button" class="rBtn" value="취소"  id="reset">
							<input type="submit" class="sBtn" value="수정" onclick="return updateCheck()">
						</td>
					</tr>
				</table>
			</div>
	</div>
	</form>
</body>
</html>