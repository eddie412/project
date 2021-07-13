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
				display: none; }
	.menu { position:absolute; top:0px; left:0px; 
		width:40%; height: 100%; background-color:#DDD; }
	.menu > div { padding: 10%; }
	a {
		text-decoration: none;
		color: black;
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

    // 확장 메뉴를 보여주거나 닫는다.
	function ShowSubMenu( strId ){
		var lySubMenu = $( strId );

		if( lySubMenu.first().is( ":hidden" ) ){
			$( strId ).slideDown( 300 );
		}
		else{
			$( strId ).slideUp( 300 );
		}
	}

	$( document ).ready( function()
	{
		$('.menu_2' ).hide();
	} );
</script>
</head>
<body>
	<img src="/resources/images/Imenu.png" width="40" onclick="ShowMenu()">
	<div class="menu_bg">
		<div class="menu">
			<div style="width:80%; text-align: right"
			 onclick="HideMenu()">닫기</div>
			<div><a href="list?pCode=M"> 막걸리</a></div>
			<div><a href="list?pCode=S">  소주</a></div>
			<div><a href="list?pCode=Y">  약주/탁주</a></div>
			<div><a href="list?pCode=F">  과실주</a></div>
			<div><a href="list?pCode=A">  안주</a></div>
		</div>
	</div>
</body>
</html>