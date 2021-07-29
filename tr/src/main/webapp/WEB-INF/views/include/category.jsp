<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>categories</title>
<style>
	.menu_bg { width: 40%; height: 2000px; 
				position: fixed; top:0px; 
				left:0px; overflow: hidden; 
				display: none; z-index: 10;}
	.menu { position:absolute; top:0px; left:0px; 
		width:40%; height: 100%; background-color:#DDD;  }
	.menu > div { padding: 10%; margin-top :20px;}
	div#menu_1 {
		text-decoration: none;
		color: black;
	}
	div#menu_2 {
		text-decoration: none;
		position: absolute; top:600px;
		
	}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script>
	var giMenuDuration = 700;

    // 전체 메뉴를 오른쪽으로 슬라이드하여서 보여준다.
	function ShowMenu(){
		$('.menu_bg' ).css( { 'display' : 'block' } );
		$('.menu' ).css( { 'left' : '-100%' } );
		$('.menu' ).animate( { left: '0px' }, { duration: giMenuDuration } );
	}

    // 전체 메뉴를 왼쪽으로 슬라이드하여서 닫는다.
	function HideMenu(){
		$('.menu' ).animate( 
				{ left: '-100%' }, 
				{ duration: giMenuDuration, complete:function(){ 
					$('.menu_bg' ).css( { 'display' : 'none' } 
					);
					} 
				} );
	}

</script>
</head>
<body>
	<img src="../resources/images/menubar.png" class="navber-menu" width="40" onclick="ShowMenu()">
	<div class="menu_bg">
		<div class="menu">
			<div style="width:80%; text-align: right" onclick="HideMenu()">닫기</div>
			<div id="menu_1"><a href="/product/cateList?c=m"> 막걸리</a></div>
			<div id="menu_1"><a href="/product/cateList?c=s">  소주</a></div>
			<div id="menu_1"><a href="/product/cateList?c=y">  약주/탁주</a></div>
			<div id="menu_1"><a href="/product/cateList?c=f">  과실주</a></div>
			<div id="menu_1"><a href="/product/cateList?c=n">  안주</a></div>
			<div id="menu_2"><a href="../qna/list"> 고객센터</a></div> 
		</div>
	</div>
</body>
</html>