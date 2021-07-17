
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
			 상품목록
				<table>
						<c:forEach var="row" items="${list}">
						<tr>
							<a href="${path}/product/detail/${row.pNO}">
							<td><img src="${path}/images/${row.pImg}" width="100px" height="110px"></a></td>	
						</tr>
					
						<tr>
							<td>${row.pName}</td>
						<tr>
				
						<tr>
							<td>
								<fmt:formatNumber value="${row.pPrice}" pattern="###,###,###"/> 원
								
							</td>
						<tr>
						
						</c:forEach>	
					</table>
			</div>
		
		</section>
		
		<footer>
			<div id="footer_box">
				<%@ include file = "include/footer.jsp" %>
			</div>
		</footer>
	</div>

</body>
</html>
