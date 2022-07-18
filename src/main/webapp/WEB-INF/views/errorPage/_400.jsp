<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>

<div class="conatainer">
	<div class="jumbotron">
		<h2>${url}</h2>
		<h3>잘못된 요청입니다. 관리자에게 문의하세요.</h3>
		<a href="${contextPath}/board/list">목록으로</a>
	</div>
</div>