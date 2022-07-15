<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>
<div class="container">
	<div class="jumbotron">
		<h2>게시글목록</h2>
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
				<td>
				<a href="get?bno=${b.bno}">${b.title}</a>
				</td>
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
</div>
<%@ include file="../layout/footer.jsp"%>
