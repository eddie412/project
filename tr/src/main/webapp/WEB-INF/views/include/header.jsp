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
<title>header</title>
</head>
<body>
	<table>
		<tr>
			<td><img src="../resources/images/Imenu.png" alt="메뉴" id="menu"></td>
			<td><img src="../resources/images/logo.PNG"  alt="로고" id="logo"></td>
			<td>
				<ul>
					<li><a href = "login.jsp" >로그인</a></li>
					<li><a href ="member/mp_orderView">마이페이지</a></li>
					<li>장바구니</li>
				</ul>			
			</td>
		</tr>	
	</table>
	<hr>
</body>
</html>