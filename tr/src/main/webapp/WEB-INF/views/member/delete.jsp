<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- Core theme CSS-->
<link href="../resources/css/updateStyle.css" rel="stylesheet" />
<title>마이페이지</title>
</head>
<script type="text/javascript">
	function deleteCheck(){
		var result = -1;
		
		if(result == -1){
			if(document.frm.userPass.value == ""){
				alert("비밀번호를 입력해주세요.");
				frm.userPass.focus();
				return false;
			}else if(document.frm.userPass.value != document.frm.passcheck.value){
				alert("비밀번호가 맞지 않습니다.");
				frm.userPass.focus();
				return false;
			}
			
			result = 1;
		}
		
		if(result == 1){
			alert("탈퇴했습니다. 그동안 감사했습니다.");
			
			return true;
		}
	}
</script>
<body>
	<!-- 헤드 -->
	<div id="header"></div>

	<!-- 사이드 메뉴 -->
	<%@ include file="../include/mypageNav.jsp" %>

	<!-- 메인 -->
	<form method="post" action="deleteSuccess" name="frm">
		<table align="center" id="main">
			<tr><th colspan="2">정말로 탈퇴하시겠습니까?</th></tr>
			<tr><td colspan="2">탈퇴 후 회원정보가 모두 삭제됩니다. 아이디, 메일주소, 핸드폰 번호 등 회원정보가 모두 삭제되며, 삭제된
				데이터는 복구되지 않습니다.</td></tr>
			<tr>
				<td>아이디</td>
				<td><input type="text" name="userId" value="${member.userId}" readonly="readonly"></td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td><input type="password" name="userPass" ><input type="hidden" name="passcheck" value="${member.userPass}"></td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" value="탈퇴" onclick="return deleteCheck()">
					<input type="button" value="취소" onclick="location.href='member/mp_order'">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>