<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "sec" uri = "http://www.springframework.org/security/tags" %>

<sec:authorize access="isAuthenticated()">
	<sec:authentication property="principal" var="principal"/>
</sec:authorize>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="/css/updateForm.css">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js" integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous"></script>
<meta charset="UTF-8">
<title>Login Form</title>
</head>
<body>
	<div class="container" id="container">
		<form>
		<input type="hidden" id="id" value="${principal.member.getId()}">
		<header>
		  	<div class="header">
		      <a href="index"><img id="logo" src="/img/logo1.png"></a>
		      <input type="image" id="search-Btn" src="/img/search.png">
		  	</div>
			<div id="head_list"></div>
			<a href="javascript:history.back()" class="btn btn-primary"><</a>
			<h1>내 정보 수정</h1>
		</header>
		
		<section id="info">
			<label for="username">Username</label>
			<input type="text" id="username" value="${principal.member.getUsername()}" readonly>
			<label for="password">Password</label>
			<input type="password" id="password" placeholder="Enter Password">
			<label for="nickname">Nickname</label>
			<input type="text" id="nickname" value="${principal.member.getNickname()}">
		</section>
		
		<button id="btn-update" class="btn btn-primaly">수정하기</button>
		
		<section id="bottom_logo">
		    <div>
		      <ul>
		      	<li onclick="location.href='/index'">
		      		<img src="/img/home1.png"><br>
		      		홈
		      	</li>
		      	<li>
		      		<img src="/img/app_board1.png"><br>
		      		게시판
		      	</li>
		      	<li>
		      		<img src="/img/people1.png"><br>
		      		매칭
		      	</li>
		      	<li>
		      		<img src="/img/shop1.png"><br>
		      		쇼핑몰
		      	</li>
		      	<li onclick="location.href='/myPage'">
		      		<img src="/img/profile1.png"><br>
		      		마이페이지
		      	</li>
		      </ul>
	    	</div>
    	</section>
		</form>
	</div>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="/js/member.js"></script>
</body>
</html>