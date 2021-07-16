<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<title>댓글 수정</title>
</head>
<script type="text/javascript">
	$(document).ready(function() {
		var formObj = $("form[name='updateForm']");

		$(".cancel_btn").on("click", function() {
			location.href = "qnaView?n=${replyUpdate.qNo}";
		})

	})
</script>
<body>
	<header id="header">
		<div id="header_box">
			<%@ include file="../../include/header.jsp"%>
		</div>
	</header>
	<aside>
		<%@ include file="../aside.jsp"%>
	</aside>
	<br><hr>
	<div id="root">
		<header>
			<h1>댓글 수정</h1>
		</header>
		<hr />

		

		<section id="container">
			<form name="updateForm" role="form" method="post" action="replyUpdate">
				<input type="hidden" name="qNo" value="${replyUpdate.qNo}"readonly="readonly" /> 
				<input type="hidden" id="rNo" name="rNo"value="${replyUpdate.rNo}" /> 
				<table>
					<tbody>
						<tr>
							<td><label for="content">댓글 내용</label>
							<input type="text" id="rContent" name="rContent" value="${replyUpdate.rContent}" /></td>
						</tr>

					</tbody>
				</table>
				<div>
					<button type="submit" class="update_btn">저장</button>
					<button type="button" class="cancel_btn">취소</button>
				</div>
			</form>
		</section>
		<hr />
	</div>
</body>
</html>