<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript">
</script>
<title>ProductAdd</title>
</head>
<body>
	<header id="header">
		<div id="header_box">
			<%@ include file="../../include/header.jsp"%>
		</div>
	</header>
	<aside>
		<%@ include file="../aside.jsp"%>
	</aside>
	<br><hr>
	<h2>상품등록</h2>
	<form role="form" method="post" action="productAdd">
		<div class="input_area">
			<label for="pNo">상품번호</label>
			<select name = "pNo" id="pNo" onchange="kindChange(this)">
				<option>상품 종류를 선택해주세요</option>
				<option value="m">막걸리</option>
				<option value="s">소주</option>
				<option value="b">맥주</option>
			</select>
		</div>
		<div class="input_area">
			<label for="pName">상품명</label>
			<input type="text" id="pName" name="pName" />
		</div>
		<div class="input_area">
			<label for="pPrice">판매가</label>
			<input type="number" id="pPrice" name="pPrice" />원
		</div>
		<div class="input_area">
			<label for="pCount">수량</label>
			<input type="number" id="pCount" name="pCount" />개
		</div>
		<div class="input_area">
			<label for="pInfo">상세설명</label>
			<textarea id="pInfo" name="pInfo" rows="5" cols="20"></textarea>
		</div>
		
		<div class="input_area">
			<button type="submit" id="add_btn" class="btn btn-success">등록</button>
			<button type="reset" onclick="location.href='productList'">취소</button>
		</div>
	</form>
</body>
</html>