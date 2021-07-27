<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<style type="text/css">
#nav {
	position: fixed;
	width: auto;
	padding: 0;
	margin: 0;
	height: 100%;
	overflow: auto;
	text-align: center;
	
	border-right: 1px solid gray;
}

#nav .nav_title {
	width: auto;
	height: 17%;
	margin: 0.8rem;
	font-size: 1.4rem;
	font-weight: bold;
	border-bottom: 2px solid lightgray;
}

#icon-mypage{
	width: 3rem;
	position: relative;
	margin-bottom: 1.5rem;
	margin-left: 0.8rem;
}

#nav span{
	font-size: 14px;
	margin-left: -4.1rem;
}

#nav b{
	text-align: center;
	font-size: 18px;
	color: #3FB0C8;
}


#nav .nav_content{
	list-style: none;
	padding-right: 3rem;
	font-family: 'Noto Sans KR', sans-serif;
}

.nav_content li{
	display: block;
	padding: auto;
}

.nav_content li:after{
  display:block;
  content: '';
  border-bottom: solid 3px #3FB0C8;  
  transform: scaleX(0);  
  transition: transform 250ms ease-in-out;
}

.nav_content li:hover:after { transform: scaleX(1); }

#nav a {
	display: inline-block;
	margin: 1rem auto;
	color:#5A443F;
	text-decoration: none;
	font-size: 14px;
}
</style>
<body>
	<!-- 사이드 메뉴 -->
	<div id="nav">
		<div class="nav_title">
			 <img src="../../resources/images/myPage.png" id="icon-mypage" />
			<span><b>${name}</b>님</span><br>
			마이페이지
		</div>
		<ul class="nav_content">
			<li><a href="order">주문상세내역</a></li>
			<li><a href="qna">문의사항</a></li>
			<li><a href="update">회원정보수정</a></li>
			<li><a href="delete">탈퇴하기</a></li>
		</ul>
	</div>
</body>
</html>