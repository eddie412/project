<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<meta charset="UTF-8">

<title>문의사항</title>
<script type="text/javascript">
//목록
	$(document).ready(function(){
		var formObj = $("form[role='readForm']");
		
			//수정
			$(".update_btn").on("click",function(){
			
					formObj.attr("action","/qna/updateView");
					formObj.attr("method", "get");
					formObj.submit();
			
			});

			// 삭제
			$(".delete_btn").on("click", function(){
				var deleteYN = confirm("삭제하시겠습니까?");
				
				if(deleteYN ==true){
				formObj.attr("action", "/qna/delete");
				formObj.attr("method", "post");
				formObj.submit();
				}
			});
			//목록
			$(".list_btn").on("click", function(){
				event.preventDefault();
				location.href ="/qna/list?page=${scri.page}" 
							+ "&perPageNum=${scri.perPageNum}"
							+ "&searchType=${scri.searchType}&keyword=${scri.keyword}";
			});
			//댓글 작성
			$(".replyWriteBtn").on("click", function(){
				  var formObj = $("form[name='replyForm']");
				  formObj.attr("action", "/qna/replyWrite");
				  formObj.submit();
				});
			
			//댓글 수정 View
			$(".replyUpdateBtn").on("click", function(){
				location.href = "/qna/replyUpdateView?qno=${read.qno}"
								+ "&page=${scri.page}"
								+ "&perPageNum=${scri.perPageNum}"
								+ "&searchType=${scri.searchType}"
								+ "&keyword=${scri.keyword}"
								+ "&rno="+$(this).attr("data-rno");
			});
					
		//댓글 삭제 View
			$(".replyDeleteBtn").on("click", function(){
				location.href = "/qna/replyDeleteView?qno=${read.qno}"
					+ "&page=${scri.page}"
					+ "&perPageNum=${scri.perPageNum}"
					+ "&searchType=${scri.searchType}"
					+ "&keyword=${scri.keyword}"
					+ "&rno="+$(this).attr("data-rno");
			});
		
})
</script>
</head>
<body>
	<div id="root">
		<header>
			<h1>문의사항</h1>
		</header>
		<hr />

		<section id="container">
			<form role="readForm" method="post">

				<input type="hidden" id="qno" name="qno" value="${read.qno}" /> 
				<input type="hidden" id="page" name="page" value="${scri.page}"> 
				<input type="hidden" id="perPageNum" name="perPageNum"value="${scri.perPageNum}"> 
				<input type="hidden" id="searchType" name="searchType" value="${scri.searchType}">
				<input type="hidden" id="keyword" name="keyword" value="${scri.keyword}">

				<table>
					<tbody>
						<tr>
							<td><label for="qno">번호</label><input type="text" id="qno"
								name="qno" value="${read.qno}" /></td>
						</tr>
						<tr>
							<td><label for="title">제목</label><input type="text"
								id="title" name="title" value="${read.title}" /></td>
						</tr>
						<tr>
							<td><label for="content">내용</label> <textarea id="content"
									name="content"><c:out value="${read.content}" /></textarea></td>
						</tr>
						<tr>
							<td><label for="writer">작성자</label><input type="text"
								id="writer" name="writer" value="${read.writer}" /></td>
						</tr>
						<tr>
							<td><label for="date">작성일</label> <fmt:formatDate
									value="${read.regdate}" pattern="yyyy.MM.dd hh:mm" /></td>
						</tr>
					</tbody>
				</table>
				<div>
					<button type="submit" class="update_btn">수정</button>
					<button type="submit" class="delete_btn">삭제</button>
					<button type="submit" class="list_btn">목록</button>
				</div>
			</form>
			<!-- 댓글 -->
			<div id="reply">
				<ol class="replyList">
					<c:forEach items="${replyList}" var="replyList">
						<li>
							<p>
								작성자 : ${replyList.rwriter}<br /> 작성일 :
								<fmt:formatDate value="${replyList.rdate}"
									pattern="yyyy.MM.dd hh:mm" />
							</p>

							<p>${replyList.rcontent}</p>
							<div>
								<button type="button" class="replyUpdateBtn"
									data-rno="${replyList.rno}">수정</button>
								<button type="button" class="replyDeleteBtn"
									data-rno="${replyList.rno}">삭제</button>
							</div>
						</li>
					</c:forEach>
				</ol>
			</div>
			
			<form name="replyForm" method="post">
				<input type="hidden" id="qno" name="qno" value="${read.qno}" /> <input
					type="hidden" id="page" name="page" value="${scri.page}"> <input
					type="hidden" id="perPageNum" name="perPageNum"
					value="${scri.perPageNum}"> <input type="hidden"
					id="searchType" name="searchType" value="${scri.searchType}">
				<input type="hidden" id="keyword" name="keyword"
					value="${scri.keyword}">

				<div>
					<label for="rwriter">댓글 작성자</label><input type="text" id="rwriter"
						name="rwriter" /> <br /> <label for="rcontent">댓글 내용</label><input
						type="text" id="rcontent" name="rcontent" />
				</div>
				<div>
					<button type="button" class="replyWriteBtn">작성</button>
				</div>
			</form>

		</section>
		<hr />
	</div>
</body>
</html>