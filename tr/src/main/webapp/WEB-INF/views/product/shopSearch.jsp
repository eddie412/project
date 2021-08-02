<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="../resources/css/homeStyles.css" rel="stylesheet" />
<link href="https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap" rel="stylesheet">
<style type="text/css">
#title_m{margin-left:20px; font-size:25px; font-family: 'Gowun Dodum', sans-serif;}
.price_s{font-family: 'Gowun Dodum', sans-serif;}
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

		<br>

		<section class="py-5">
					<p id="title_m">'${titleMain}' 검색결과</p>
					
					<hr>
					<c:if test="${empty search}">
						
						일치하는 검색 결과가 없습니다.
					</c:if>
			<div class="container px-4 px-lg-5 mt-5">
				<div
					class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">

					
					<c:forEach items="${search}" var="search">
						<div class="col mb-5">
							<div class="card h-100">
								<div>
								<a href="/product/view?n=${search.pNo}"> 
								<img class="card-img-top" src="../resources/images/${search.pImg}"></a>
								</div>
							<div id="card-body p-4">
								<div class="text-center">
									<div class="fw-bolder">${search.pName}</div>
									<div class="price_s">
										<fmt:formatNumber pattern="###,###,###"
											value="${search.pPrice}" />
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

	
				<%@ include file="../include/footer.jsp"%>
		
	</div>

</body>
</html>