<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
 section#container div#lin { display:inline-block; margin:10px; }
 section#container div.goodsThumb img { width:200px; height:200px; }
 section#container div.goodsName { padding:10px 0; text-align:center; }
 section#container div.goodsName a { color:#000; }
  section#container div.goodsPrice {text-align:center;} 
</style>
<title>전통 이酒 </title>
</head>
<body>
<div id="root">
		<header id="header">
			<div id="header_box">
				<%@ include file="../include/header.jsp"%>
			</div>
		</header>

		<nav id="nav">
			<div id="nav_box">
				<%@ include file="../include/nav.jsp"%>
			</div>
		</nav>
		<br>
		<section id="container">
			<div id="container_box" style="width: 80; height: 300;">
				<div id="content">
				
					<c:forEach items="${search}" var="search">
						<div id="lin">
							<div class="goodsThumb">
								<a href="/product/view?n=${search.pNo}"><img src="../resources/images/${search.pImg}"></a>
							</div>
							<div class="goodsName">
								${search.pName}
							</div>
							<div class="goodsPrice">
								<fmt:formatNumber pattern="###,###,###" value="${search.pPrice}"/>
								원	
							</div>
						</div>
					</c:forEach>
			
					</div>
			</div>

		</section>

		<footer>
			<div id="footer_box">
				<%@ include file="../include/footer.jsp"%>
			</div>
		</footer>
	</div>

</body>
</html>