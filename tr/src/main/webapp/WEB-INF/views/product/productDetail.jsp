<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 상세보기</title>
<%@ include file="../include/header.jsp"%>
</head>
<body>
	<%@ include file="../include/nav.jsp"%>
	<h2>상품상세보기</h2>
	<table border="1">
		<tr>
			<td><img src="${path}/images/${vo.pImg}" alt="이미지" width="340"
				height="300"></td>
			<td>
				<table border="1" style="height: 300px; width: 400px;">
					<tr align="center">
						<td>상품명</td>
						<td>${vo.pName}</td>
					</tr>
					<tr align="center">
						<td>가격</td>
						<td><fmt:formatNumber value="${vo.pPrice}"
								pattern="###,###,###" /></td>
					</tr>

					<tr align="center">
						<td colspan="2">
							<form name="form1" method="post"
								action="${path}/shop/cart/insert.do">
								<input type="hidden" name="productId" value="${vo.pNo}">
								<select name="amount">
									<c:forEach begin="1" end="10" var="i">
										<option value="${i}">${i}</option>
									</c:forEach>
								</select>&nbsp;개 <br> <input type="submit" value="장바구니에 담기">

							</form> <a href="${path}/product/list.do">상품목록</a>
						</td>
					</tr>

				</table>
				<tr align="center">
					<td colspan="2">상세 정보</td>
				</tr>
				<tr align="center">
					<td colspan="2">${vo.pInfo}</td>
				</tr>
	
			</td>
		</tr>
	</table>

</body>
</html>