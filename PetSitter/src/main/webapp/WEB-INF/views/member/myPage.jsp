<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp" %>
<head>
<link rel="stylesheet" type="text/css" href="/css/myPage.css">
</head>
	<div class="center">
		<div id="head_list">
			<a href="javascript:history.back()" class="back"><</a>
			<h1>마이 페이지</h1>
		</div>	
	</div>
	<form>
		<div class="profile">
			<div class="profile_img">
				<img src="/img/pet_img.jpg" class="my_img" onclick="location='#'">
				<br><span>내 프로필</span>
			</div>
			<div class="profile_img" onclick="location.href='/petProfile'">
				<img src="/img/pet_img.jpg" class="my_img">
				<br><span>내새끼 프로필</span>
			</div>
		</div>
		<div id="myPageList">
			<ul>
				<li onclick="location.href='update'">
					내 정보 수정
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
				<li onclick="location='delete'">
					<span style="color: red;">회원탈퇴</span>
				</li>
			</ul>
		</div>
	</form>
<%@ include file="../layout/footer.jsp" %>