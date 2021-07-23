
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
     <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script> 
function replyList(){
 var pNO = "${shopList.pNO}";
 $.getJSON("/product/view/replyList" + "?n=" + pNO, function(data){
  var str = "";
  
  $(data).each(function(){
   
   console.log(data);
   
   var cDate = new Date(this.cDate);
   cDate = cDate.toLocaleDateString("ko-US")
   
   str += "<li data-cNO='" + this.cNO + "'>"
     + "<div class='userInfo'>"
     + "<span class='userId'>" + this.userId + "</span>"
     + "<span class='date'>" + cDate + "</span>"
     + "</div>"
     + "<div class='replyContent'>" + this.cContent + "</div>"
     
     + "<c:if test='${member != null}'>"
     
      + "<div class='replyFooter'>"
      + "<button type='button' class='modify' data-cNO='" + this.cNO + "'>M</button>"
      + "<button type='button' class='delete' data-cNO='" + this.cNO + "'>D</button>"
      + "</div>"
     
     + "</c:if>"
     
     + "</li>";           
  });
  
  $("section.replyList ol").html(str);
 });
}
</script>
<style>
section#container{width:1000px;height:auto;}
 section#container::after { content:""; display:block; clear:both; }
section#content{width:800px; margin:auto; }
 section#content::after { content:""; display:block; clear:both; }

 div.goods div.goodsImg {float:left; width:350px; margin:10px; }
 div.goods div.goodsImg img { width:350px; height:auto; }
 div.goods div.goodsInfo {float:right;width:330px; font-size:22px; }
 div.goods div.goodsInfo p { margin:20px 0 20px 20px; }
 div.goods div.goodsInfo p span {display:inline-block; width:100px; margin-right:15px; }
 
 div.goods div.goodsInfo p.cartStock input { font-size:22px; width:50px; padding:5px; margin:0; border:1px solid #eee; }
div.goods div.goodsInfo p.cartStock button { font-size:26px; border:none; background:none; }
 div.goods div.goodsInfo p.cartStock button { font-size:26px; border:none; background:none; }
 div.goods div.goodsInfo p.addToCart { text-align:right; }
 div.goods div.gdsDes { font-size:18px; clear:both; padding-top:30px; width:100; }

</style>
<style>
	div#reply p#replylogin{display:block; clear:both;  margin-top: 50;}
 section.replyForm { content:""; display:block; clear:both;  padding:30px 0; }
 section.replyForm div.input_area { margin:10px 0; }
 section.replyForm textarea { font-size:16px; font-family:'맑은 고딕', verdana; padding:10px; width:500px;; height:150px; }
 section.replyForm button { font-size:20px; padding:5px 10px; margin:10px 0; background:#fff; border:1px solid #ccc; }
 
 section.replyList { padding:30px 0; }
 section.replyList ol { padding:0; margin:0; }
 section.replyList ol li { padding:10px 0; border-bottom:2px solid #eee; margin-top:30px; margin-left:20;}
 section.replyList div.userInfo { }
 section.replyList div.userInfo .userName { font-size:24px; font-weight:bold; }
 section.replyList div.userInfo .date { color:#999; display:inline-block; margin-left:10px; }
 section.replyList div.replyContent { padding:10px; margin:20px 0; }
 section.replyList div.replyFooter{margin-bottom:10px;}
section.replyList div.replyFooter button { font-size:14px; border: 1px solid #999; background:none; margin-right:10px; }
</style>
<style>
 div.replyModal { position:relative; z-index:1; display:none;}
 div.modalBackground { position:fixed; top:0; left:0; width:100%; height:100%; background:rgba(0, 0, 0, 0.8); z-index:-1; }
 div.modalContent { position:fixed; top:20%; left:calc(50% - 250px); width:500px; height:250px; padding:20px 10px; background:#fff; border:2px solid #666; }
 div.modalContent textarea { font-size:16px; font-family:'맑은 고딕', verdana; padding:10px; width:500px; height:200px; }
 div.modalContent button { font-size:20px; padding:5px 10px; margin:10px 0; background:#fff; border:1px solid #ccc; }
 div.modalContent button.modal_cancel { margin-left:20px; }
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

		<nav id="nav">
			<div id="nav_box">
				<%@ include file="../include/nav.jsp"%>
			</div>
		</nav>
		<br>
		<section id="container">
			<div id="container_box" style="width: 80; height: 300;">

				<section id="content">
					<form role="form" method="post">
						<input type="hidden" name="pNO" value="${shopList.pNO}" />
					</form>

					<div class="goods">
						<div class="goodsImg">
							<img src="${shopList.pImg}">
						</div>

						<div class="goodsInfo">
							<p class="gdsName">
								<span>상품명</span>${shopList.pName}</p>

							<p class="cateName">
								<span>카테고리</span>${shopList.cateName}</p>

							<p class="gdsPrice">
								<span>가격 </span>
								<fmt:formatNumber pattern="###,###,###"
									value="${shopList.pPrice}" />
								원
							</p>

							<p class="gdsStock">
								<span>재고 </span>
								<fmt:formatNumber pattern="###,###,###"
									value="${shopList.pCount}" />
								EA
							</p>

							<p class="cartStock">
								<span>구입 수량</span>
								<button type="button" class="plus">+</button>
								<input type="number" class="numBox" min="1"
									max="${shopList.pCount}" value="1" readonly="readonly" />
								<button type="button" class="minus">-</button>

								<script>
								  $(".plus").click(function(){
								   var num = $(".numBox").val();
								   var plusNum = Number(num) + 1;
								   
								   if(plusNum >= ${shopList.pCount}) {
								    $(".numBox").val(num);
								   } else {
								    $(".numBox").val(plusNum);          
								   }
								  });
								  
								  $(".minus").click(function(){
								   var num = $(".numBox").val();
								   var minusNum = Number(num) - 1;
								   
								   if(minusNum <= 0) {
								    $(".numBox").val(num);
								   } else {
								    $(".numBox").val(minusNum);          
								   }
								  });
								 </script>

							</p>

							<p class="addToCart">
								<button type="button">카트에 담기</button>
							</p>
							<span>상세내용</span>
							<div class="gdsDes">${shopList.pInfo}</div>
						</div>
					</div>
				</section>
			</div>
			<div id="reply">

				<c:if test="${member == null }">
					<p id="replylogin">
						소감을 남기시려면 <a href="/member/loginPage">로그인</a>해주세요
					</p>
				</c:if>

				<c:if test="${member != null}">
					<section class="replyForm">
						<form role="form" method="post" autocomplete="off" action="/product/replyView">
							<input type="hidden" name="pNO" id="gdsNum" value="${shopList.pNO}">
							<div class="input_area">
								<textarea name="cContent" id="repCon"></textarea>
							</div>

							<div class="input_area">
								<button type="button" id="reply_btn">소감 남기기</button>
								
							<script>
							 $("#reply_btn").click(function(){
							  
							  var formObj = $(".replyForm form[role='form']");
							  var gdsNum = $("#gdsNum").val();
							  var repCon = $("#repCon").val()
							  
							  var data = {
								  pNO : gdsNum,
								  cContent : repCon
							    };
							  
							  $.ajax({
							   url : "/product/view/registReply",
							   type : "post",
							   data : data,
							   success : function(){
							    replyList();
							    $("#repCon").val("");
							   }
							  });
							 });
							</script>
							</div>

						</form>
					</section>
				</c:if>

				<section class="replyList">
					<ol>
					<%-- 	<c:forEach items="${shopReply}" var="reply">
							<li>   
								<div class="userInfo">
									    <span class="userId">${reply.userId}</span>     
									<span class="date"><fmt:formatDate value="${reply.cDate}"
											pattern="yyyy.MM.dd" /></span>    
								</div>    
								<div class="replyContent">${reply.cContent}</div>  
							</li>
  						 </c:forEach> --%>
					</ol>
					<script> 
						replyList();
					</script>
					
					<script>
						$(document).on("click", ".modify", function(){
						// $(".replyModal").attr("style", "display:block;");
						$(".replyModal").fadeIn(200);
						
						 var cNO = $(this).attr("data-cNO");
						 var cContent = $(this).parent().parent().children(".replyContent").text();
						 
						 $(".modal_repCon").val(cContent);
						 $(".modal_modify_btn").attr("data-cNO", cNO);
					});
					
					
					
					 $(document).on("click", ".delete", function(){
					  
						 var deleteConfirm = confirm("정말로 삭제하시겠습니까?");
					  
						  if(deleteConfirm){
							 
							  var data = {cNO : $(this).attr("data-cNO")};
							   
							  $.ajax({
							   url : "/product/view/deleteReply",
							   type : "post",
							   data : data,
							   success : function(result){
								   
									   if(result == 1) {
									    replyList();
									   } else {
									    alert("작성자 본인만 할 수 있습니다.");     
									   }
								  },
								  error : function(){
									  alert("로그인하세요.")
								  }
							  	});
						  }
					 });
					</script>
					
				</section>
			</div>
		</section>

		<footer id="footer">
			<div id="footer_box">
				<%@ include file="../include/footer.jsp"%>
			</div>
		</footer>
	</div>
	<div class="replyModal">
	
	 <div class="modalContent">
	  
	  <div>
	   <textarea class="modal_repCon" name="modal_repCon"></textarea>
	  </div>
	  
	  <div>
	   <button type="button" class="modal_modify_btn">수정</button>
	   <button type="button" class="modal_cancel">취소</button>
	  </div>
	  
	 </div>
	
	 <div class="modalBackground"></div>
	 
	</div>
	<script>
	$(".modal_modify_btn").click(function(){
		 var modifyConfirm = confirm("정말로 수정하시겠습니까?");
						 
		if(modifyConfirm) {
			  var data = {
					  cNO : $(this).attr("data-cNO"),
			     cContent : $(".modal_repCon").val()
			    };  // ReplyVO 형태로 데이터 생성
			  
			  $.ajax({
			   url : "/product/view/modifyReply",
			   type : "post",
			   data : data,
			   success : function(result){
			    
			    if(result == 1) {
			     replyList();
			     $(".replyModal").fadeOut(200);
			    } else {
			     alert("작성자 본인만 할 수 있습니다.");       
			    }
	 		   },
			   error : function(){
			    alert("로그인하셔야합니다.")
			   }
			  });
			 }
			 
			});

		$(".modal_cancel").click(function(){
// 		 $(".replyModal").attr("style", "display:none;");
		 $(".replyModal").fadeOut(200);
		});
		</script>
</body>
</html>
