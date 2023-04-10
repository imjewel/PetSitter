<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp" %>
<head>
<link rel="stylesheet" type="text/css" href="/css/myPage.css">
</head>
	<form>
		<div class="center">
			<div id="head_list">
				<a href="javascript:history.back()" class="back"><</a>
				<h1>마이 페이지</h1>
			</div>	
		</div>
		<article id="profile">
			<ul>
				<li onclick="location='#'">
					<span>내 프로필</span>
				</li>
				<li onclick="location.href='/petProfile'">
					<span>내새끼 프로필</span>
				</li>
			</ul>
		</article>
		<article id="myPageList">
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
				<li onclick="location='#'">
					<span style="color: red;">회원탈퇴</span>
				</li>
			</ul>
		</article>
	</form>
<%@ include file="../layout/footer.jsp" %>