<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
	#menu {
	 	width : 40px;
	 	margin-right: 600px;
	}
	header a {
		text-decoration: none;
	}
	
	header a:link{ color: #ABAFB2;}
	
	header td > ul{
		list-style: none;
		margin-left: 50px;
	}
	
	header ul > li{
		float: left;
		color: #ABAFB2;
		margin-right: 50px;
	}
</style>
<title>header</title>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$("#logoutBtn").on("click", function() {
			location.href = "/member/logout";
		})
		$("#myPageBtn").on("click", function() {
			location.href = "member/myPage";
		})
	})
</script>
</head>
<body>

</head>
<body>
	<table>
		<tr>
			<td>
			<%@ include file = "category.jsp" %>
			</td>
			
			<td><img src="../resources/images/logo.PNG"  alt="로고" id="logo"></td>
			<td>
				<ul>
					<c:if test="${member ==null}">
						<li><a href="../member/loginPage">로그인</a></li>
					</c:if>
					<c:if test="${member != null}">
						<button id="logoutBtn" type="button">로그아웃</button>
						<c:if test="${member.verify == 9}">
							<li><a href="/admin/adminPage">관리자 화면</a></li>
						</c:if>
						<c:if test="${member.verify != 9}">
							<li>마이페이지</li>
							<br>
							<li>장바구니</li>
						</c:if>
					</c:if>
						<li><a href="qna/list">고객센터</a></li>
				</ul>			
			</td>
		</tr>	
	</table>
	<hr>
</body>
</html>