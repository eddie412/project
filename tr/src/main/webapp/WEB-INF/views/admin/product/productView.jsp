<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Order View</title>
<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.2.0.min.js"></script>
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
	<form role="form" method="post" autocomplete="off">
		<input type="hidden" name="n" value="${product.pNo}" />

		<div class="inputArea">
			<label for="pNo">상품번호</label> <span class="category1">${product.pNo}</span>
		</div>

		<div class="inputArea">
			<label for="pName">상품명</label> <span> ${product.pName}</span>
		</div>
		<div class="input_area">
			<label for="pPrice">판매가</label> <span> ${product.pPrice}</span>
		</div>
		<div class="input_area">
			<label for="pCount">수량</label> <span> ${product.pCount}</span>개
		</div>
		<div class="input_area">
			<label for="pInfo">상세설명</label> <span> ${product.pInfo}</span>
		</div>

		<div class="input_area">
			<button type="button" id="modify_btn" class="btn btn-warning">수정</button>
			<button type="button" id="delete_btn" class="btn btn-danger">삭제</button>
			<button type="reset" onclick="location.href='productList'">취소</button>

			<script>
				var formObj = $("form[role='form']");

				$("#modify_btn").click(function() {
					formObj.attr('action', 'productModify');
					formObj.attr('method', 'get');
					formObj.submit();
				});

				$("#delete_btn").click(function() {

					var con = confirm("삭제하시겠습니까?");

					if (con) {
						formObj.attr('action', 'productDelete');
						formObj.submit();
					}
				});
			</script>
		</div>
	</form>
</body>
</html>