<%@ page language="java" contentType="text/html; charset=UTF-8"    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
	body{
		margin: 0;		padding: 0;
	}
	#header{
		width: 90%;
		align: center;
	}
	#menu {
	 	width : 40px;
	 	margin-right: 600px;
	}
	a {
		text-decoration: none;
	}
	
	a:link{ color: #ABAFB2;}
	a:visited{ color: #ABAFB2; }
	a:hover{color: #E86639; }
	
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
</head>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$("#logoutBtn").on("click", function(){
			location.href="/member/logout";
		})
		$("#myPageBtn").on("click",function(){
			location.href="member/myPage";
		})
		
	})
</script>	


<body>
	<table id="header">
		<tr>
			<td><a href="../nav" ><img src="../resources/images/Imenu.png" alt="메뉴" id="menu"></a></td>
			<td><img src="../resources/images/logo.PNG"  alt="로고" id="logo"></td>
			<td>
				<ul>
					<c:if test="${member ==null}">
						<li><a href="../member/loginPage" >로그인</a></li>
					</c:if>
					<c:if test="${member != null}">
						<button id="logoutBtn" type="button">로그아웃</button>
						<li><a href ="/member/mp_order">마이페이지</a></li><br>
						<li><a href="/shop/list">장바구니</a></li>
					</c:if>
				</ul>			
			</td>
		</tr>	
	</table>
	<hr>
</body>
</html>