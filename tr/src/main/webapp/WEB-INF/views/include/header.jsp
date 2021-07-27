<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- Font -->
<link
	href="https://fonts.googleapis.com/css2?family=East+Sea+Dokdo&display=swap"
	rel="stylesheet" />

<style type="text/css">
/* 전체 */
.container,
.container-fluid,
.container-xxl,
.container-xl,
.container-lg,
.container-md,
.container-sm {
  width: 100%;
  padding-right: var(--bs-gutter-x, 0.75rem);
  padding-left: var(--bs-gutter-x, 0.75rem);
  margin-right: auto;
  margin-left: auto;
}
@media (min-width: 576px) {
  .container-sm, .container {
    max-width: 540px;
  }
}
@media (min-width: 768px) {
  .container-md, .container-sm, .container {
    max-width: 720px;
  }
}
@media (min-width: 992px) {
  .container-lg, .container-md, .container-sm, .container {
    max-width: 960px;
  }
}
@media (min-width: 1200px) {
  .container-xl, .container-lg, .container-md, .container-sm, .container {
    max-width: 1140px;
  }
}
@media (min-width: 1400px) {
  .container-xxl, .container-xl, .container-lg, .container-md, .container-sm, .container {
    max-width: 1320px;
  }
}
@media (min-width: 992px) {
  .navbar-expand-lg {
    flex-wrap: nowrap;
    justify-content: flex-start;
  }
  .navbar-expand-lg .navbar-nav {
    flex-direction: row;
  }
  .navbar-expand-lg .navbar-nav .dropdown-menu {
    position: absolute;
  }
  .navbar-expand-lg .navbar-nav .nav-link {
    padding-right: 0.5rem;
    padding-left: 0.5rem;
  }
  .navbar-expand-lg .navbar-nav-scroll {
    overflow: visible;
  }
  .navbar-expand-lg .navbar-collapse {
    display: flex !important;
    flex-basis: auto;
  }
  .navbar-expand-lg .navbar-toggler {
    display: none;
  }
}

.navbar {
  position: relative;
  display: flex;
  flex-wrap: wrap;
  align-items: center;
  justify-content: space-between;
  padding-top: 0.5rem;
  padding-bottom: 0.5rem;
}
.navbar > .container,
.navbar > .container-fluid,
.navbar > .container-sm,
.navbar > .container-md,
.navbar > .container-lg,
.navbar > .container-xl,
.navbar > .container-xxl {
  display: flex;
  flex-wrap: inherit;
  align-items: center;
  justify-content: space-between;
}
/* 로고 */
.navbar-brand {
	padding-top: 0.3125rem;
	padding-bottom: 0.3125rem;
	text-align: center;
	font-size: 3.5rem;
	font-family: 'East Sea Dokdo', cursive;
	color: #3FB0C8;
	text-decoration: none;
	white-space: nowrap;
}

.navbar-brand:hover, .navbar-brand:focus {
	color: #3FB0C8;
}

/* 메뉴바(햄버거) */
.navber-menu {
	width: 40px;
	margin-top: -1rem;
}

.navbar-menu:hover {
	cursor: pointer;
}

검색창 * /
#search-content {
	position: absolute;
	height: 50px;
	width: 10px;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
}

#search-content.on {
	-webkit-animation-name: in-out;
	animation-name: in-out;
	-webkit-animation-duration: 0.7s;
	animation-duration: 0.7s;
	-webkit-animation-timing-function: linear;
	animation-timing-function: linear;
	-webkit-animation-iteration-count: 1;
	animation-iteration-count: 1;
}

input {
	box-sizing: border-box;
	width: 30px;
	height: 30px;
	margin-top: -0.5rem;
	margin-left: 32rem;
	border: 4px solid #3FB0C8;
	border-radius: 50%;
	background: none;
	color: #fff;
	font-size: 16px;
	font-weight: 400;
	font-family: Roboto;
	outline: 0;
	-webkit-transition: width 0.4s ease-in-out, border-radius 0.8s
		ease-in-out, padding 0.2s;
	transition: width 0.4s ease-in-out, border-radius 0.8s ease-in-out,
		padding 0.2s;
	-webkit-transition-delay: 0.4s;
	transition-delay: 0.4s;
	-webkit-transform: translate(-100%, -50%);
	-ms-transform: translate(-100%, -50%);
	transform: translate(-100%, -50%);
}

.search {
	background: none;
	position: absolute;
	top: 0px;
	left: 0;
	height: 30px;
	width: 30px;
	padding: 0;
	border-radius: 100%;
	outline: 0;
	border: 0;
	color: inherit;
	cursor: pointer;
	-webkit-transition: 0.2s ease-in-out;
	transition: 0.2s ease-in-out;
	-webkit-transform: translate(-100%, -50%);
	-ms-transform: translate(-100%, -50%);
	transform: translate(-100%, -50%);
}

.search:before {
	content: "";
	position: absolute;
	width: 15px;
	height: 4px;
	background-color: #3FB0C8;
	-webkit-transform: rotate(45deg);
	-ms-transform: rotate(45deg);
	transform: rotate(45deg);
	margin-top: 0.4rem;
	margin-left: 32.6rem;
	-webkit-transition: 0.2s ease-in-out;
	transition: 0.2s ease-in-out;
}

.close {
	-webkit-transition: 0.4s ease-in-out;
	transition: 0.4s ease-in-out;
	-webkit-transition-delay: 0.4s;
	transition-delay: 0.4s;
}

.close:before {
	content: "";
	position: absolute;
	width: 27px;
	height: 4px;
	margin-top: -0.6rem;
	margin-left: 31rem;
	background-color: #3FB0C8;
	-webkit-transform: rotate(45deg);
	-ms-transform: rotate(45deg);
	transform: rotate(45deg);
	-webkit-transition: 0.2s ease-in-out;
	transition: 0.2s ease-in-out;
}

.close:after {
	content: "";
	position: absolute;
	width: 27px;
	height: 4px;
	background-color: #3FB0C8;
	margin-top: -0.6rem;
	margin-left: 31rem;
	cursor: pointer;
	-webkit-transform: rotate(-45deg);
	-ms-transform: rotate(-45deg);
	transform: rotate(-45deg);
}

.square {
	box-sizing: border-box;
	padding: 0 40px 0 10px;
	width: 350px;
	height: 40px;
	border: 4px solid #3FB0C8;
	border-radius: 0;
	background: none;
	color: #4E3321;
	font-family: Roboto;
	font-size: 16px;
	font-weight: 400;
	outline: 0;
	-webkit-transition: width 0.4s ease-in-out, border-radius 0.4s
		ease-in-out, padding 0.2s;
	transition: width 0.4s ease-in-out, border-radius 0.4s ease-in-out,
		padding 0.2s;
	-webkit-transition-delay: 0.4s, 0s, 0.4s;
	transition-delay: 0.4s, 0s, 0.4s;
	-webkit-transform: translate(-100%, -50%);
	-ms-transform: translate(-100%, -50%);
	transform: translate(-100%, -50%);
}

/* 사용자 메뉴 */
#userMenu {
	margin-right: 2.5rem;
}

#userMenu img {
	width: 2.1rem;
	padding-top: 4rem;
	margin-right: 0.8rem;
}
</style>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
	<div class="container px-6  py-1 px-lg-7">
		<img src="../resources/images/menubar.png" class="navber-menu">
		<a class="navbar-brand" href="/">전통이酒</a>
		<!-- 검색창 -->
		<form id="search-content">
			<input type="text" name="input" class="input" id="search-input">
			<button type="reset" class="search" id="search-btn"></button>
		</form>
		<!-- 사용자 메뉴 -->
		<div id="userMenu">
			<c:choose>
				<c:when test="${member == null}">
					<a href="/member/order"><img
						src="../resources/images/myPage.png" id="icon-mypage" /></a>
					<a href="/order/cart"><img src="resources/images/cart.png"
						id="icon-cart" /></a>
				</c:when>
				<c:otherwise>
					<c:if test="${member.verify == 9}">
						<a href="/admin/adminPage"><img
							src="resources/images/admin.png"></a>
					</c:if>
					<a href="/member/order"><img src="resources/images/myPage.png"
						id="icon-mypage" /></a>
					<a href="/order/cart"><img src="resources/images/cart.png"
						id="icon-cart" /></a>
					<!-- <span class="badge bg-dark text-white ms-1 rounded-pill">0</span> -->
				</c:otherwise>
			</c:choose>
		</div>
	</div>
</nav>
</body>