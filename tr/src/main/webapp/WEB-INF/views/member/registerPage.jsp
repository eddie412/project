<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript">
function fn_idChk(){
	$.ajax({
		url : "/member/idChk",
		type : "post",
		dataType : "json",
		data : {"userId" : $("#userId").val()},
		success : function(data){
			if(data == 1){
				alert("중복된 아이디입니다.");
			}else if(data == 0){
				$("#idChk").attr("value", "Y");
				alert("사용가능한 아이디입니다.");
			}
		}
	})
	$.ajax({
		url:"member/ageChk"
		
	})
}
	</script>
<title>register</title>
</head>
<body>
	<section id="content">
 	<form role="form" method="post" autocomplete="off">
  		<div class="input_area">
  				<label for="userId">아이디</label>
   				<input id="userId" name="userId" required="required" />
   				<button class ="idChk" type="button" id="idChk" onclick="fn_idChk();" value="N">중복체크</button>
  		</div>
  
  		<div class="input_area">
  			<label for="userPass">비밀번호</label>
   			<input type="password" id="userPass" name="userPass" required="required" />      
  		</div>
  
  		<div class="input_area">
   			<label for="userName">이름</label>
   			<input type="text" id="userName" name="userName" required="required" />      
 		</div>
 		
 		<div class="input_area">
   			<label for="userEmail">이메일</label>
   			<input type="email" id="userEmail" name="userEmail" required="required" />      
 		</div>
  
  		<div class="input_area">
  			<label for="userPhone">휴대폰 번호</label>
   			<input type="tel" id="userPhone" name="userPhone" placeholder="숫자만 입력해주세요" required="required" />      
 		 </div>
 		 
 		 <div class="input_area">
  			<label for="userAddr">주소</label>
   			<input type="text" id="userAddr" name="userAddr" required="required" />
   			<button type ="button" name="addChk" id="addChk">주소찾기</button>  
 		 </div>
 		 
 		 <div class="input_area">
  			<label for="userBday">생년월일</label>
   			<input type="date" id="userBday" name="userBday" placeholder="미성년자는 회원가입 불가" />
 		 </div>
  
  		<button class="btn btn-success" type="submit" id="submit">회원가입</button>
		<button class="cencle btn btn-danger" type="button">취소</button>
  
 </form>   
</section>
</body>
</html>