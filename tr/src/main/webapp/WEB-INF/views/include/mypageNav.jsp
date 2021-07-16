<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<style type="text/css">
#nav {
	list-style: none;
	background-color: #EBE3ED;
	width: 15%;
	padding: 0;
	margin: 0;
	position: fixed;
	height: 100%;
	overflow: auto;
	text-align: center;
}

#nav a {
	display: inline-block;
	color: black;
	margin-left: 60px;
	margin-top: 100px;
	text-align: center;
	font-weight: bold;
	font-size: 1.1em;
}

#nav a:hover {
	color: #8D2D54;
}
</style>
<body>
	<!-- 사이드 메뉴 -->
		<ul id="nav" align="center">
			<li><a href="mp_order">주문상세내역</a></li>
			<li><a href="mp_qna">문의사항</a></li>
			<li><a href="mp_update">회원정보수정</a></li>
			<li><a href="mp_deleteview">탈퇴하기</a></li>
		</ul>
	</div>
</body>
</html>