
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
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
								<img src="${list.pImg}">
							</div>
							<div class="goodsName">
								<a href="/shop/view?n=${list.pNO}">${list.pName}</a>
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
