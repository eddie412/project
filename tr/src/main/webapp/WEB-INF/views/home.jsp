
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
     <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
<style>
.moreProdInfo{ float:left;display:inline-block; border:solid 1px navy; width:200px; margin: 10px;}
div.con{width:1000px; height: 600px;}

</style>

	<title>전통 이酒 </title>
</head>
<body>
	<div id="root">
		<header id = "header">
			<div id="header_box">
				<%@ include file = "include/header.jsp" %>
			</div>
		</header>
		
		<nav id= "nav">
			<div id="nav_box">
				<%@ include file = "include/nav.jsp" %>
			</div>
		</nav>
		<br>
		<section id="container">
			<div id="container_box" style="width:80;height:300;">
			 
				<section id="content">
					<div class="con">
						<c:forEach var="i" begin="1" end="23" varStatus="status">
						
								<c:choose>
									<c:when test="${(status.count)%4 != 0}">
									<div class="moreProdInfo">${status.count}</div>
									</c:when>
								
								<c:otherwise>
									<div class="moreProdInfo">${status.count}</div>
										<br/>
								</c:otherwise>

							</c:choose>
						</c:forEach>
					</div>
					
				</section>
			</div>
		
		</section>
		
		<footer id="footer">
			<div id="footer_box">
				<%@ include file = "include/footer.jsp" %>
			</div>
		</footer>
	</div>

</body>
</html>
