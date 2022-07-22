<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>

<input type="hidden" name="bno" value="${board.bno}" id="bno"> 
<input type="hidden" name="page" value="${param.page}" id="page"> 
<input type="hidden" name="type" value="${param.type}" id="type"> 
<input type="hidden" name="keyword" value="${param.keyword}" id="keyword"> 
 
<div class="container">
	<div class="jumbotron">
		<h2>게시글조회</h2>
	</div>
	<form id="getForm">
		<div class="card">
			<div class="card-header">
				<div class="row">
					<div class="col-sm-1">${board.bno}</div>
					<div class="col-sm-11">${board.title}</div>
				</div>
			</div>
			<div class="card-body">${board.content}</div>
			<div class="card-footer d-flex justify-content-between">
				<div>
					<button class="btn btn-warning modify">수정</button>
					<button class="btn btn-danger remove">삭제</button>
					<button class="btn btn-success list">목록</button>
				</div>
				<div>
					등록일 : <fmt:parseDate var="regDate" value="${board.regDate}" pattern="yyyy-MM-dd'T'HH:mm:ss" type="both"/>
					<fmt:formatDate value="${regDate}" pattern="yyyy년 MM월 dd일"/>
					수정일 : <fmt:parseDate var="updateDate" value="${board.updateDate}" pattern="yyyy-MM-dd'T'HH:mm:ss" type="both"/>
					<fmt:formatDate value="${updateDate}" pattern="yyyy년 MM월 dd일"/>
				</div>
			</div>
		</div>
	</form>
</div>
<script>
$(function(){
	let getForm=$('#getForm');
	$('#getForm .list').on('click', function(e){ //목록 버튼 클릭 했을때
		e.preventDefault();
		if ($('#page').val().trim() != '') {
			getForm.append($('#page'));
		}
		
		if ($('#keyword').val().trim() != '') {
			getForm.append($('#type'));
			getForm.append($('#keyword'));
		}
		//console.log('기본동작금지')
		getForm.attr("action","list");
		getForm.attr("method","get");
		getForm.submit();
	});
	
	$('#getForm .modify').on('click', function(e){ //수정 버튼 클릭 했을때
		e.preventDefault();
		getForm.append(bno);
		getForm.attr("action","modify");
		getForm.attr("method","get");
		getForm.submit();
	});
	
	$('#getForm .remove').on('click', function(e){ //삭제 버튼 클릭 했을때
		e.preventDefault();
		getForm.append(bno);
		getForm.attr("action","remove");
		getForm.attr("method","post");
		getForm.submit();
	});
	
	
})
</script>
<%@ include file="../layout/footer.jsp"%>
