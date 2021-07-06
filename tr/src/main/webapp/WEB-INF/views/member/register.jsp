<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>register</title>
</head>
<body>
	<section id="content">
 	<form role="form" method="post" autocomplete="off">
  		<div class="input_area">
  				<label for="userId">아이디</label>
   				<input id="userId" name="userId" required="required" />
   				<button class ="idChk" type="button" id="idChk">중복체크</button>
  		</div>
  
  		<div class="input_area">
  			<label for="userPass">비밀번호</label>
   			<input type="password" id="userPass" name="userPass" required="required" />      
  		</div>
  		
  		<div class="input_area">
  			<label for="userPass">비밀번호 확인</label>
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
  			<label for="userPhon">휴대폰 번호</label>
   			<input type="number" id="userPhon" name="userPhon" placeholder="숫자만 입력해주세요" required="required" />      
 		 </div>
 		 
 		 <div class="input_area">
  			<label for="userAdd">주소</label>
   			<input type="text" id="userAdd" name="userAdd" required="required" />
   			<button type ="button" name="addChk" id="addChk">주소찾기</button>  
 		 </div>
 		 
 		 <div class="input_area">
  			<label for="bday">생년월일</label>
   			<input type="text" id="bday" name="bday" placeholder="미성년자는 회원가입 불가" />
 		 </div>
  
  		<button type="submit" id="signup_btn" name="signup_btn">회원가입</button>
  
 </form>   
</section>
</body>
</html>