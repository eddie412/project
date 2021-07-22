<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<meta charset="UTF-8">
<script type="text/javascript" src="../resources/qnaScript.js"></script>
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
					<input type="hidden" id="qno"name="qno" value="${update.qno}" readonly="readonly"/>
					<input type="hidden" id="page" name="page" value="${scri.page}"> 
					<input type="hidden" id="perPageNum" name="perPageNum"value="${scri.perPageNum}"> 
					<input type="hidden" id="searchType" name="searchType" value="${scri.searchType}">
					<input type="hidden" id="keyword" name="keyword" value="${scri.keyword}">
					<table>
						<tbody>
							<tr>
								<td>
									<label for="title">제목</label><input type="text" id="title" name="title" value="${update.title}"/>
								</td>
							</tr>	
							<tr>
								<td>
									<label for="pass">비밀번호</label><input type="password" id="pass" name="qpass" value="${update.qpass }" readonly="readonly" />
								</td>
							</tr>	
							<tr>
								<td>
									<label for="content">내용</label><textarea id="content" name="content"><c:out value="${update.content}" /></textarea>
								</td>
							</tr>
							<tr>
								<td>
									<label for="writer">작성자</label><input type="text" id="writer" name="writer" value="${update.writer}" readonly="readonly"/>
								</td>
							</tr>
							<tr>
								<td>
									<label for="regdate">작성일</label>
									<fmt:formatDate value="${update.regdate}" pattern="yyyy.MM.dd hh:mm"/>					
								</td>
							</tr>		
						</tbody>			
					</table>
					<div>
						<button  onclick="return qnaCheck()">저장</button>
						<button class="cancle_btn">취소</button>
					</div>
				</form>
			</section>
			<hr />
		</div>
</body>
</html>