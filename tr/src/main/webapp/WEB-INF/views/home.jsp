<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>전통이酒</title>
<!-- Favicon-->
<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
<!-- Bootstrap icons-->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css"
	rel="stylesheet" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="../resources/css/homeStyles.css" rel="stylesheet" />
<!-- Font -->
<link href="https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap" rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=East+Sea+Dokdo&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=East+Sea+Dokdo&family=Noto+Sans+KR:wght@300&display=swap"
	rel="stylesheet">
	
</head>

	<body>
		<%@include file="include/header.jsp" %>
	
	<!-- Section-->
	<section class="py-5">
		<p  id="title_S" style="margin-left:50px; font-size:25px; font-family: 'Gowun Dodum', sans-serif; color:#3FB0C8;">Best Seller</p>
		<hr>
		<div class="container px-4 px-lg-5 mt-5">
			<div
				class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
				<c:forEach items="${homeList}" var="homeList">

					<div class="col mb-5">
						<div class="card h-100">
							<!-- Product image-->
							<div>
								<a href="/product/view?n=${homeList.pNo}"><img
									class="card-img-top" src="../resources/images/${homeList.pImg}"></a>
							</div>
							<div id="card-body p-4">
								<div class="text-center">
									<div class="fw-bolder">${homeList.pName}</div>
									<div class="price_s" style="font-family: 'Gowun Dodum', sans-serif;">
										<fmt:formatNumber pattern="###,###,###"
											value="${homeList.pPrice}" />
										원
									</div>
								</div>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
	</section>
	<%@include file="include/footer.jsp" %>
	<!-- Bootstrap core JS-->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
	<script
		src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<!-- Core theme JS-->
	<script src="../resources/js/homescripts.js"></script>
</body>
</html>


<%-- <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
		
		<section id="container">
			<div id="container_box">
				본문
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
 --%>