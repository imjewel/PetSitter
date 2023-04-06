<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../layout/header.jsp"%>
<html>
<head>
	<link href="/css/list.css" rel="stylesheet">
</head>
<body>
<div class="container">
	<c:forEach var="board" items="${board.content}">
		<div class="card m-2">
			<div class="card-body">
				<h4 class="card-title"><a href="/auth/board/${board.id}" class="btn">${board.title}</a></h4>
			</div>
		</div>
	</c:forEach>
	<ul class="pagination justify-content-center">
		<c:choose>
			<c:when test="${board.first}">
				<li class="page-item disabled"><a class="page-link"
					href="?page=${board.number-1}">Previous</a></li>
			</c:when>
			<c:otherwise>
				<li class="page-item"><a class="page-link"
					href="?page=${board.number-1}">Previous</a></li>
			</c:otherwise>
		</c:choose>
		<c:choose>
			<c:when test="${board.last}">
				<li class="page-item disabled"><a class="page-link"
					href="?page=${board.number+1}">Next</a></li>
			</c:when>
			<c:otherwise>
				<li class="page-item"><a class="page-link"
					href="?page=${board.number+1}">Next</a></li>
			</c:otherwise>
		</c:choose>
	</ul>
</div>
<%@ include file="../layout/footer.jsp"%>
</body>
</html>