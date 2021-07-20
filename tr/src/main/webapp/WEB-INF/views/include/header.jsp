<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
#menu {
	width: 40px;
	margin-right: 600px;
}

a {
	text-decoration: none;
}

a:link {
	color: #ABAFB2;
}

td>ul {
	list-style: none;
	margin-left: 50px;
}

ul>li {
	float: left;
	color: #ABAFB2;
	margin-right: 50px;
}
</style>
<title>header</title>
</head>
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
<body>
	<table>
		<tr>
			<td><a href="../nav"><img
					src="../../resources/images/Imenu.png" alt="메뉴" id="menu"></a></td>
			<td><a href="../../"><img src="../../resources/images/logo.PNG"
					alt="로고" id="logo"></a></td>
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
							<li><a href ="../member/mp_orderList">마이페이지</a></li><br>
							<li><a href="/order/list">장바구니</a></li>
						</c:if>
					</c:if>
				</ul>
			</td>
		</tr>
	</table>
	<hr>
</body>
</html>