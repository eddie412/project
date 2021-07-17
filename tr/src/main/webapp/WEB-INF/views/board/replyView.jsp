<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<meta charset="UTF-8">
<title>문의사항</title>
</head>
<body>
<h1>답변</h1>
	<form action="/board/reply" method="post">
	<input type="hidden" name="qno" value="${reply.qno}"/>
	<input type="hidden" name="root" value="${reply.root }" />
	<input type="hidden" name="step" value="${reply.step }" />
	<input type="hidden" name="hidden" value="${reply.indent }" />
	
	<table>
		<tbody>
			<tr>
				<td>
				
					<label for="title">제목</label>
					<c:forEach begin="0" end="${reply.indent}"><%="  "%></c:forEach>
					<input type="text" id="title" name="title" value="답글: ${reply.title}"/>
				</td>
			</tr>
			<tr>
				<td>
					<label>내용</label> ${reply.content}
				</td>
			</tr>	
			<tr>
				<td>
					<label for="content">답변</label><textarea id="content" name="content"></textarea>
				</td>
			</tr>
			<tr>
				<td>
					<label for="writer">작성자</label><input type="text" id="writer" name="writer" />
				</td>
			<tr>
				<td>						
					<input type="submit" onclick="return qnaCheck()" value="답변등록">
					<input type="button" onclick="location.href='/board/list'" value="취소">
				</td>
			</tr>			
		</tbody>
	</table>
</form>

</body>
</html>