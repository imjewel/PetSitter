<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix = "sec" uri = "http://www.springframework.org/security/tags" %>

<sec:authorize access="isAuthenticated()">
	<sec:authentication property="principal" var="principal"/>
</sec:authorize>

<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="/css/petProfile.css">

<meta charset="UTF-8">
<title>PetProfile</title>
</head>
<body>
	<div class="container" id="container">
		<form action="/api/pet" method="POST">
<<<<<<< HEAD
=======
		<input type="hidden" id="id" value="${pet.member.id==principal.member.id }">
>>>>>>> refs/heads/main
		<header>
		  <div class="header">
		      <a href="index"><img id="logo" src="/img/logo1.png"></a>
		      <input type="image" id="search-Btn" src="/img/search.png">
		  </div>
		<div id="head_list"></div>
		<a href="javascript:history.back()" class="btn btn-primary"><</a>
		<h1>반려동물 정보</h1>
		</header>
		<section id="photo">
			<input type="file" name="files" id="files">
			<input type="submit" id="submit" value="사진 등록하기">
		</section>
		<section id="pageList">
		<b style="margin-left: 30px;">기본 정보</b>
			<ul>
				<li>
					<label for="name">이름</label>
					<input type="text" id="name" name="name" value="${pet.name}"placeholder="예) 댕댕이"></input>
				</li>
				<li>
					<label for="category">강아지 or 고양이</label>
					<input type="radio" id="category" name="category" value="puppy">강아지
					<input type="radio" id="category" name="category" value="cat">고양이
				</li>
				<li>
					<label for="gender">성별</label>
					<input type="radio" id="gender" name="gender" value="남자아이">남자아이
					<input type="radio" id="gender" name="gender" value="야자아이">여자아이
				</li>
				<li>
					<label for="pet_type">품종</label>
					<input type="text" id="pet_type" name="pet_type" placeholder="예) 말티즈 or 렉돌"></input>
				</li>
				<li>
				  <label for="age">나이</label>
				  <input type="text" id="age" name="age">살
				</li>
				<li>
					<label for="weight">몸무게</label>
					<input type="text" id="weight" name="weight" placeholder="예) 2.8"></input>kg
				</li>
				<li>
					<label for="neutered">중성화</label>
					<input type="radio" id="neutered" name="neutered" value="yes">했어요
					<input type="radio" id="neutered" name="neutered" value="no">안했어요
				</li>
				<li>
					<label for="hospital">동물병원</label>
					<input type="text" name="hospital" placeholder="예) SL동물병원 (하왕십리동)"></input>
				</li>
			</ul>
		</section>
		<b style="margin-left:30px">접종 사항</b>
			<div class="btn-group" role="group" aria-label="Basic checkbox toggle button group" style="margin-top:20px;">
				<input type="checkbox" class="btn-check" id="vaccin" value="Rabies" autocomplete="off">
				<label class="btn btn-outline-primary" for="vaccin">광견병</label>
				
				<input type="checkbox" class="btn-check" id="vaccin" value="comprehensive" autocomplete="off">
				<label class="btn btn-outline-primary" for="vaccin">종합 백신</label>
				
				<input type="checkbox" class="btn-check" id="vaccin" value="corona" autocomplete="off">
				<label class="btn btn-outline-primary" for="vaccin">코로나 백신</label>
				
				<input type="checkbox" class="btn-check" id="vaccin" value="kennel" autocomplete="off">
				<label class="btn btn-outline-primary" for="vaccin">켄넬코프</label>
				
				<input type="checkbox" class="btn-check" id="vaccin" value="heartworm" autocomplete="off">
				<label class="btn btn-outline-primary" for="vaccin">심장 사상충</label>
				
				<input type="checkbox" class="btn-check" id="vaccin" value="ectoparasite" autocomplete="off">
				<label class="btn btn-outline-primary" for="vaccin">외부 기생충</label>
			</div>
		<section id="etc" style="margin-top:50px;">
			<b style="margin-left:30px;">돌봄시 참고사항</b>	
			<textarea rows="10" cols="200"></textarea>
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
		      	<li onclick="location.href='/myPage'">
		      		<img src="/img/profile1.png"><br>
		      		마이페이지
		      	</li>
		      </ul>
	    	</div>
    	</section>
    	</form>
		<button id="btn-petsave" class="save"><b>저장하기</b></button>
		
	</div>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="/js/pet.js"></script>
</body>
</html>