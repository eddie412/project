<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판</title>
<script type="text/javascript" src="../resources/qnaScript.js"></script>
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
							<tr>
								<td>
									<label for="title">제목</label><input type="text" id="title" name="title" />
								</td>
							</tr>	
							<tr>
								<td>
									<label for="content">내용</label><textarea id="content" name="content" ></textarea>
								</td>
							</tr>
							<tr>
								<td>
									<label for="writer">작성자</label><input type="text" id="writer" name="writer" />
								</td>
							<tr>
								<td>						
									<input type="submit" onclick="return qnaCheck()" value="등록">
									<input type="button" onclick="location.href='/qna/list'" value="취소">
								</td>
							</tr>			
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