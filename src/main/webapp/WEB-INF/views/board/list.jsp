<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>
<div class="container">
	<div class="jumbotron">
		<h2>게시글목록</h2>
	</div>


	<div class="d-flex justify-content-between">
		<div class="col-md-10">
			<form action="${contextPath}/board/list" id="serachForm">
				<!-- 
				<input type="hidden" name="page" value="${pageMarker.criteria.page}">
				 -->
				<div class="row">
					<div class="col-md-3 form-group">
						<select class="form-control" name="type" id="type">
							<option value="">검색종류선택</option>
							<option value="T" ${param.type=='T'?'selected':''}>제목</option>
							<option value="C" ${param.type=='C'?'selected':''}>내용</option>
							<option value="W" ${param.type=='W'?'selected':''}>작성자</option>
							<option value="TC" ${param.type=='TC'?'selected':''}>제목+내용</option>
							<option value="TW" ${param.type=='TW'?'selected':''}>제목+작성자</option>
							<option value="CW" ${param.type=='CW'?'selected':''}>내용+작성자</option>
						</select>
					</div>
					<div class="col-md-7 form-group">
						<input type="search" class="form-control" name="keyword" id="keyword" value="${param.keyword}">
					</div>
					<div class="col-md-2 form-group">
						<button class="btn btn-primary form-control">검색</button>
					</div>
				</div>
			</form>
		</div>
		<div class="col-md-2 text-right">
			<a href="register">글쓰기</a>
		</div>
	</div>

	<table class="table">
		<tr>
			<th>번호</th>
			<th>제목</th>
			<th>작성자</th>
			<th>등록일</th>
			<th>수정일</th>
		</tr>
		<c:forEach var="b" items="${list}">
			<tr>
				<td>${b.bno}</td>
				<td><a href="get?bno=${b.bno}">${b.title}</a></td>
				<td>${b.writer}</td>
				<td>
					<fmt:parseDate var="regDate" value="${b.regDate}" pattern="yyyy-MM-dd'T'HH:mm:ss" type="both"/>
					<fmt:formatDate value="${regDate}" pattern="yyyy년 MM월 dd일"/>
				</td>
				<td>
					<fmt:parseDate var="updateDate" value="${b.updateDate}" pattern="yyyy-MM-dd'T'HH:mm:ss" type="both"/>
					<fmt:formatDate value="${updateDate}" pattern="yyyy년 MM월 dd일"/>
				</td>
			</tr>

		</c:forEach>

	</table>
	<div class="d-flex justify-content-center">
		<ul class="pagination my-3 py-3">
			<c:if test="${pageMarker.prev}">
				<li class="page-item"><a class="page-link" href="${pageMarker.startPage-1}">Previous</a></li>
			</c:if>

			<c:forEach begin="${pageMarker.startPage}"
				end="${pageMarker.endPage}" var="page">
				<li class="page-item ${pageMarker.criteria.page == page?'active':''}">
					<a class="page-link" href="${page}">${page}</a>
				</li>
			</c:forEach>

			<c:if test="${pageMarker.next}">
				<li class="page-item"><a class="page-link"
					href="${pageMarker.endPage+1}">Next</a></li>
			</c:if>
		</ul>
	</div>
</div>

<!-- Modal -->
<div id="feedback" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <h4 class="modal-title">글 등록</h4>
        <button type="button" class="close" data-dismiss="modal">&times;</button>
      </div>
      <div class="modal-body message">
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-info" data-dismiss="modal">Close</button>
      </div>
    </div>

  </div>
</div>

<script>
$(function(){
	let result = "${result}"
	let message = "";
	if(result.trim()!=''){
		if(result=='register'){
			message = "${bno}번 글을 등록 하였습니다."
		} else if (result=='modify') {
			message = "${bno}번 글을 수정 하였습니다."
		} else if (result=='remove'){
			message = "${bno}번 글을 삭제 하였습니다."
		}
		$('.message').append(message);
		$('#feedback').modal('show');
	}
	
	$('#serachForm button').on('click', function(e){
		if($('#keyword').val().trim()==''){
			alert("검색어를 입력하세요.");
		}
	})
	
	//페이지 이동
	$('.pagination a').on('click', function(e) {
			e.preventDefault();
			let pageForm = $('<form></form>')
			let pageNum = $(this).attr("href")
			pageForm.append($('<input/>', { type : 'hidden', name : 'page', value : pageNum
			}));

			if ($('#keyword').val().trim() != '') {
				pageForm.append($('#type')) //검색타입
				pageForm.append($('#keyword')) //키워드
			}
			pageForm.attr('action', 'list');
			pageForm.attr('method', 'get');
			pageForm.appendTo('body');
			pageForm.submit();
		});
	});
</script>
<%@ include file="../layout/footer.jsp"%>