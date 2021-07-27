<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<meta charset="UTF-8">

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
<title>문의사항</title>
</head>
<body>
<div id="root">
			<header>
				<h1> 문의사항</h1>
			</header>
			<hr />
	
			<section id="container">
				<form name="frm" role="updateForm" method="post" action="/qna/update">
					<input type="hidden" id="qNo"name="qNo" value="${update.qNo}" readonly="readonly"/>
					<input type="hidden" id="page" name="page" value="${scri.page}"> 
					<input type="hidden" id="perPageNum" name="perPageNum"value="${scri.perPageNum}"> 
					<input type="hidden" id="searchType" name="searchType" value="${scri.searchType}">
					<input type="hidden" id="keyword" name="keyword" value="${scri.keyword}">
					<table>
						<tbody>
							<tr>
								<td>
									<label for="qTitle">제목</label><input type="text" id="qTitle" name="qTitle" value="${update.qTitle}"/>
								</td>
							</tr>	
							<tr>
								<td>
									<label for="qPass">비밀번호</label><input type="password" id="qPass" name="qPass" value="${update.qPass }" readonly="readonly" />
								</td>
							</tr>	
							<tr>
								<td>
									<label for="qContent">내용</label><textarea id="qContent" name="qContent"><c:out value="${update.qContent}" /></textarea>
								</td>
							</tr>
							<tr>
								<td>
									<label for="qWriter">작성자</label><input type="text" id="qWriter" name="qWriter" value="${update.qWriter}" readonly="readonly"/>
								</td>
							</tr>
							<tr>
								<td>
									<label for="qdate">작성일</label>
									<fmt:formatDate value="${update.qDate}" pattern="yyyy.MM.dd hh:mm"/>					
								</td>
							</tr>		
						</tbody>			
					</table>
					<div>
						<button type="submit" onclick="return qnaCheck()">저장</button>
						<button type="reset" class="cancle_btn">취소</button>
					</div>
				</form>
			</section>
			<hr />
		</div>
</body>
</html>