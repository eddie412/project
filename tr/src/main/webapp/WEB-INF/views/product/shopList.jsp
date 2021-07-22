
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
<style>
 section#content ul li { display:inline-block; margin:10px; }
 section#content div.goodsThumb img { width:200px; height:200px; }
 section#content div.goodsName { padding:10px 0; text-align:center; }
 section#content div.goodsName a { color:#000; }
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
				<ul>
					<c:forEach items="${list}" var="list">
						<li>
							<div class="goodsThumb">
								<a href="/shop/view?n=${list.pNO}"><img src="${list.pImg}"></a>
							</div>
							<div class="goodsName">
								${list.pName}
							</div>
							<div class="goodsPrice">
								<fmt:formatNumber pattern="###,###,###" value="${list.pPrice}"/>	
							</div>
						</li>
					</c:forEach>
				</ul>
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
