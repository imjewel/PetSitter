<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "sec" uri = "http://www.springframework.org/security/tags" %>
<sec:authorize access="isAuthenticated()">
	<sec:authentication property="principal" var="principal"/>
</sec:authorize>
<head>
<link rel="stylesheet" type="text/css" href="/css/updateForm.css">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js" integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous"></script>
</head>
<%@ include file="../layout/header.jsp" %>
	<form>
		<input type="hidden" id="id" value="${principal.member.getId()}">
		<div class="info_modify">
			<a href="javascript:history.back()" class="back"><</a>
			<h1>내 정보 수정</h1>
		</div>
		
		<section id="info">
			<ul>
				<li>
					<label for="username">Username</label>
					<input type="text" id="username" value="${principal.member.getUsername()}" readonly>
				</li>
				<li>
					<label for="password">Password</label>
					<input type="password" id="password" placeholder="Enter Password">
				</li>
				<li>
					<label for="nickname">Nickname</label>
					<input type="text" id="nickname" value="${principal.member.getNickname()}">
				</li>
			</ul>
		</section>
		<button id="btn-update" class="btn">수정하기</button>
	</form>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="/js/member.js"></script>
<%@ include file="../layout/footer.jsp" %>