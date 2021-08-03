<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>categories</title>
<!-- Font -->
<link href="https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap" rel="stylesheet">
<style>
   .menu_bg { width: 35%; height: 2000px; 
            position: fixed; top:0px; 
            left:0px; overflow: hidden; 
            display: none; z-index:10 !important;}
   .menu { position:absolute; top:0px; left:0px; z-index:10;
      width:40%; height: 100%; background-color:#DDD;  font-family: 'Gowun Dodum', sans-serif; }
   .menu > div {position:relative; top:70px; padding: 10%; }
      div#menu_1 {
    font-family: 'Gowun Dodum', sans-serif;
   font-size: 20px;
   font-weight:bold;
    text-decoration:none;
      margin-left: 10px;
      
   }
   div#menu_2 {
    font-family: 'Gowun Dodum', sans-serif;
    text-decoration: none;
    margin-left: 10px;
    font-weight: bold;
    position: relative;
    top: 150;
      
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
<body style="z-index:5;">

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