<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>QnA view</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.2.0.min.js" ></script>
</head>
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
	<h2>문의 사항 조회</h2>
	<form role="form" method="post" autocomplete="off">
	<input type="hidden" name="n" value="${qna.qNo}" />
	
		<div class="inputArea">
			<label for="qNo">문의번호</label>
			<span> ${qna.qNo}</span>
		</div>
		<div class="input_area">
			<label for="qTitle">이름</label>
			<span> ${qna.qTitle}</span>
		</div>
		<div class="input_area">
			<label for="qWriter">작성자</label>
			<span> ${qna.qWriter}</span>
		</div>
		<div class="input_area">
			<label for="qContent">내용</label>
			<span> ${qna.qContent}</span>
		</div>
		<div class="input_area">
			<label for="qDate">작성날짜</label>
			<span> ${qna.qDate}</span>
		</div>
		
		<div class="input_area">
			<!-- <button type="button" id="modify_btn" class="btn btn-warning">수정</button> -->
			<button type="button" id="delete_btn" class="btn btn-danger">삭제</button>
			<button type="reset" onclick="location.href='qnaList'">취소</button>
			
			<script>
				var formObj = $("form[role='form']");
				
				$("#modify_btn").click(function(){
					formObj.attr('action','memberModify');
					formObj.attr('method','get');
					formObj.submit();					
				});
				
				$("#delete_btn").click(function(){
					
					var con =confirm("삭제하시겠습니까?");
					
					if(con){
						formObj.attr('action','qnaDelete');
						formObj.submit();	
					}	
				});
			</script>
		</div>
	</form>
	<!-- 댓글 조회 -->
	<div id="reply">
		<ol class="replyList">
			<c:forEach items="${replyList}" var="replyList">
				<li>
				<p>
				작성자: ${replyList.qWriter}<br/>
				작성날짜: <fmt:formatDate value="${replyList.rDate}" pattern="yyyy-MM-dd" />
				</p>
				
				<p>${replyList.rContent}</p>
				<div>
  				<button type="button" class="replyUpdateBtn" data-rNo="${replyList.rNo}">수정</button>
  				<button type="button" class="replyDeleteBtn" data-rNo="${replyList.rNo}">삭제</button>
</div>
				</li>
				</c:forEach>
		</ol>
	</div>
	<!-- 댓글 작성 -->
	<form name="replyForm" method="post">
		<input type="hidden" id="qNo" name="qNo" value="${qna.qNo}" />
		
		<label for ="rWriter">댓글 작성자: </label><span>관리자</span><br>
		<label for="rContent">댓글 내용: </label><input type="text" id="rContent" name="rContent" />
		
		<div>
 	 		<button type="button" class="replyWriteBtn">작성</button>
  		</div>
  		<script>
  			$(".replyWriteBtn").on("click", function(){
  		  		var formObj = $("form[name='replyForm']");
  		  		formObj.attr("action", "replyWrite");
  		  		formObj.submit();
  			});
  			
  		//댓글 수정 View
  			$(".replyUpdateBtn").on("click", function(){
  				location.href = "replyUpdateView?qNo=${qna.qNo}"
  								+ "&rNo="+$(this).attr("data-rNo");
  			});
  					
  		//댓글 삭제 View
  			$(".replyDeleteBtn").on("click", function(){
  				location.href = "replyDeleteView?qNo=${qna.qNo}"
  					+ "&rNo="+$(this).attr("data-rNo");
  			});
  		</script>
	</form>
</body>
</html>







