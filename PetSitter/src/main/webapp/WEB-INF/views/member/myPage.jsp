<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="/css/myPage.css">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js" integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous"></script>
<meta charset="UTF-8">
<title>Login Form</title>
</head>
<body>
	<div class="container" id="container">
		<form>
		<header>
		  	<div class="header">
		      <a href="index"><img id="logo" src="/img/logo1.png"></a>
		      <input type="image" id="search-Btn" src="/img/search.png">
		  	</div>
			<div id="head_list"></div>
			<a href="javascript:history.back()" class="btn btn-primary"><</a>
			<h1>마이 페이지</h1>
		</header>
		<section id="profile">
			<ul>
				<li onclick="location='#'">
					<span>내 프로필</span>
				</li>
				<li onclick="location.href='petProfile'">
					<span>내새끼 프로필</span>
				</li>
			</ul>
		</section>
		<section id="myPageList">
			<ul>
				<li onclick="location='#'">
					내 정보 관리
				</li>
				<li onclick="location='#'">
					내 활동 보기
				</li>
				<li onclick="location='#'">
					후기
				</li>
				<li onclick="location='#'">
					로그아웃
				</li>
				<li onclick="location='#'">
					<span style="color: red;">회원탈퇴</span>
				</li>
			</ul>
		</section>
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
		      	<li onclick="location.href='/myProfile'">
		      		<img src="/img/profile1.png"><br>
		      		마이페이지
		      	</li>
		      </ul>
	    	</div>
    	</section>
		</form>
	</div>
</body>
</html>