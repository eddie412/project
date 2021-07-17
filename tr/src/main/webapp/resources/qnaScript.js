/*readview*/

		
/*updateview*/
$(document).ready(function(){
	var formObj = $("form[role='updateForm']");
	
	$(".cancel_btn").on("click", function(){
		event.preventDefault();
		location.href = "/board/readView?qno=${update.qno}"
			   + "&page=${scri.page}"
			   + "&perPageNum=${scri.perPageNum}"
			   + "&searchType=${scri.searchType}"
			   + "&keyword=${scri.keyword}";
	})
	
	$(".update_btn").on("click", function(){
		if(fn_valiChk()){
			return false;
		}
		formObj.attr("action", "/board/update");
		formObj.attr("method", "post");
		formObj.submit();
	})
})


/*알럿 확인*/
function qnaCheck(){
	if(document.frm.title.value.length ==0){
		alert("제목을 입력하세요.");
		return false;	
	}
	if(document.frm.content.value.length == 0){
		alert("내용을 입력하세요.");
		return false;
	}
	if(document.frm.pass.value.length == 0){
		alert("비밀번호를 입력하세요.");
		return false;
	}else if(isNaN(document.frm.pass.value)){
		alert("숫자로 입력하세요.");
		return false;
	}
	return true;
}