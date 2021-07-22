<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>고객센터</title>
<style type="text/css">
			#li {list-style: none; float: left; padding: 6px;}
</style>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript" src="../resources/qnaScript.js"></script>
</head>
											<script type="text/javascript">
function passCheck(){
	var result = prompt("비밀번호를 입력해주세요.");
	
var passCom = '<%=(int)session.getAttribute("pass")%>';

	if(result == passCom){
		return true;
	}else{
		alert('비밀번호 동일안함');
		return false;
	}
}
</script>
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
				<form role="form" method="get">
					<table>
						<tr><th>번호</th><th>제목</th><th>작성자</th><th>등록일</th></tr>
						
						<c:forEach items="${list}" var = "list" varStatus="vs">
							<tr>
								<td><c:out value="${pageMaker.totalCount-((scri.page-1)*5)-vs.count+1}"/></td>
								<td>
								
								<span onclick="return passCheck()"><a href="/qna/readView?qno=${list.qno}&
															page=${scri.page}&
															perPageNum=${scri.perPageNum}&
															searchType=${scri.searchType}&
															keyword=${scri.keyword}">
									${list.title}</a></span>

								</td>
								<td><c:out value="${list.writer}" /></td>
								<td><fmt:formatDate value="${list.regdate}" pattern="yyyy.MM.dd hh:mm"/></td>
							</tr>
						</c:forEach>
						
					</table>
					<div class="search">
					    <select name="searchType">
					      <option value="n"<c:out value="${scri.searchType == null ? 'selected' : ''}"/>>선택</option>
					      <option value="t"<c:out value="${scri.searchType eq 't' ? 'selected' : ''}"/>>제목</option>
					      <option value="c"<c:out value="${scri.searchType eq 'c' ? 'selected' : ''}"/>>내용</option>
					      <option value="w"<c:out value="${scri.searchType eq 'w' ? 'selected' : ''}"/>>작성자</option>
					      <option value="tc"<c:out value="${scri.searchType eq 'tc' ? 'selected' : ''}"/>>제목+내용</option>
					    </select>
					
					    <input type="text" name="keyword" id="keywordInput" value="${scri.keyword}"/>
					
					    <button id="searchBtn" type="button">검색</button>
					      <script>
						      $(function(){
						        $('#searchBtn').click(function() {
						          self.location = "list" + '${pageMaker.makeQuery(1)}' + "&searchType=" + $("select option:selected").val() + "&keyword=" + encodeURIComponent($('#keywordInput').val());
						        });
						      });   
						    </script>
					  </div>
					<div>
					  <ul>
					    <c:if test="${pageMaker.prev}">
					    	<li id="li"><a href="list${pageMaker.makeSearch(pageMaker.startPage - 1)}">이전</a></li>
					    </c:if> 
					
					    <c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="idx">
					    	<li id="li"><a href="list${pageMaker.makeSearch(idx)}">${idx}</a></li>
					    </c:forEach>
					
					    <c:if test="${pageMaker.next && pageMaker.endPage > 0}">
					    	<li id="li"><a href="list${pageMaker.makeSearch(pageMaker.endPage + 1)}">다음</a></li>
					    </c:if> 
					  </ul>
					</div>
						<input type="button" value="작성" onClick="location.href='/qna/writeView'">
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