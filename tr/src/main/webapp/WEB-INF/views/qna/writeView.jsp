<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판</title>
<script type="text/javascript" >
function qnaCheck(){
	if(document.frm.qTitle.value.length ==0){
		alert("제목을 입력하세요.");
		document.frm.qTitle.focus();
		return false;	
	}
	if(document.frm.qContent.value.length == 0){
		alert("내용을 입력하세요.");
		document.frm.qContent.focus();
		return false;
	}
	if(document.frm.qPass.value.length == 0){
		alert("비밀번호를 입력하세요.");
		document.frm.qPass.focus();
		return false;
	}else if(isNaN(document.frm.qPass.value)){
		alert("비밀번호는 숫자로 입력하세요.");
		document.frm.qPass.focus();
		return false;
	}
	return true;
}
</script>
</head>
<body>
<div id="root">
<header id = "header">
			<div id="header_box">
				<%@ include file = "../include/header.jsp" %>
			</div>
		</header>
		
		<nav id= "nav">
			<div id="nav_box">
				<%@ include file = "../include/nav.jsp" %>
			</div>
		</nav>
		<br>
			<header>
				<h1> 문의사항</h1>
			</header>
			<hr />
			
			<section id="container">
				<form name="frm" method="post" action="/qna/write">
					<table>
						<tbody>
							<c:if test="${member.userId != null}">
							<tr>
								<td>
									<label for="qTitle">제목</label><input type="text" id="qTitle" name="qTitle" />
								</td>
							</tr>
							<tr>
								<td>
									<label for="qPass">비밀번호</label><input type="password" id="qPass" name="qPass" />
								</td>
							</tr>	
							<tr>
								<td>
									<label for="qContent">내용</label><textarea id="qContent" name="qContent" ></textarea>
								</td>
							</tr>
							<tr>
								<td>
									<label for="qWriter">작성자</label><input type="text" id="qWriter" name="qWriter" value="${member.userId}" readonly="readonly"/>
								</td>
							<tr>
								<td>						
									<input type="submit" onclick="return qnaCheck()" value="등록">
									<input type="button" onclick="location.href='/qna/list'" value="취소">
								</td>
							</tr>
							</c:if>
							<c:if test="${member.userId == null}">
								<script>
								alert("로그인 후에 작성하실수 있습니다.");
								history.back();
								</script>
							</c:if>			
						</tbody>			
					</table>
				</form>
			</section>
			<footer id="footer">
			<div id="footer_box">
				<%@ include file = "../include/footer.jsp" %>
			</div>
		</footer>
		</div>
</body>
</html>