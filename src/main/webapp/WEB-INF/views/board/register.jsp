<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>

<div class="container">
	<div class="jumbotron">
		<h3>글 쓰기</h3>
	</div>
	<form action="${contextPath}/board/register" method="post">
		<div class="form-group">
			<label>제목 : </label> 
			<input type="text" class="form-control" name="title">
		</div>
		<div class="form-group">
			<label>내용 : </label>
			<textarea rows="10" class="form-control" name="content"></textarea>
		</div>
		<div class="form-group">
			<label>작성자 : </label> 
			<input type="text" class="form-control" name="writer">
		</div>
		<button class="btn btn-primary">등록</button>
	</form>
</div>
<%@ include file="../layout/footer.jsp"%>
