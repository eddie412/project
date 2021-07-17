<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
	a {
		text-decoration: none;
	}
	
	a:link{ color: #ABAFB2;}
	
	td > ul{
		list-style: none;
		margin-left: 50px;
	}
	
	ul > li{
		float: left;
		color: #ABAFB2;
		margin-right: 50px;
	}
</style>
<title>Insert title here</title>
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
					<li><a href = "login.jsp" >로그인</a></li>
					<li><a>마이페이지</a></li>
					<li>장바구니</li>
					<li><a href="board/list">고객센터</a></li>
				</ul>			
			</td>
		</tr>	
	</table>
	<hr>
</body>
</html>