<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript">
</script>
<title>Product Modify</title>
</head>
<body>
	<header id="header">
		<div id="header_box">
			<%@ include file="../../include/header.jsp"%>
		</div>
	</header>
	<br><hr>
	<aside>
		<%@ include file="../aside.jsp"%>
	</aside>
	<h2>상품 수정</h2>
	<form role="form" method="post" action="productModify">
	<input type="hidden" name="pNo" value="${product.pNo}" />
		<div class="input_area">
			<label for="pNo">상품번호</label>
			<span>${product.pNo}</span>
		</div>
	
		<div class="input_area">
			<label for="pName">상품명</label>
			<input type="text" id="pName" name="pName" value="${product.pName}"/>
		</div>
		<div class="input_area">
			<label for="pPrice">판매가</label>
			<input type="number" id="pPrice" name="pPrice" value="${product.pPrice}"/>원
		</div>
		<div class="input_area">
			<label for="pCount">수량</label>
			<input type="number" id="pCount" name="pCount" value="${product.pCount}"/>개
		</div>
		<div class="input_area">
			<label for="pInfo">상세설명</label>
			<textarea id="pInfo" name="pInfo" rows="5" cols="20">${product.pInfo}</textarea>
		</div>
		
		<div class="input_area">
			<button type="submit" id="update_btn" class="btn btn-success">완료</button>
			<button type="button" id="back_btn" class="btn-warning">취소</button>
		
			<script>
				$("#back_btn").click(function(){
					history.back();
				});
			</script>	
		</div>
	</form>
</body>
</html>