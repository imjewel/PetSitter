<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="/css/petProfile.css">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js" integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous"></script>
<meta charset="UTF-8">
<title>Login Form</title>
</head>
<body>
	<div class="container" id="container">
		<form>
		<header>
		  <div class="header">
		      <a href="index"><img id="logo" src="img/logo1.png"></a>
		      <input type="image" id="search-Btn" src="img/search.png">
		  </div>
		<div id="head_list"></div>
		<a href="javascript:history.back()" class="btn btn-primary"><</a>
		<h1>반려동물 정보</h1>
		</header>
		<section id="photo"></section>
		<section id="pageList">
			<ul>
				<li>
					<b>기본 정보</b>
				</li>
				<li>
					<label for="name">이름</label>
					<input type="text" name="name" placeholder="예) 댕댕이"></input>
				</li>
				<li>
					<label for="gender">성별</label>
					<input type="radio" name="gender" value="남자아이">남자아이
					<input type="radio" name="gender" value="야자아이">여자아이
				</li>
				<li>
					<label for="dog_type">견종</label>
					<input type="text" name="dog_type" placeholder="예) 말티즈"></input>
				</li>
				<li>
				  <label for="birth">생일</label>
				  <input type="date" name="birth">
				</li>
				<li>
					<label for="kg">몸무게</label>
					<input type="text" name="kg" placeholder="예) 2.8"></input>kg
				</li>
				<li>
					<label for="neutered">중성화</label>
					<input type="radio" name="neutered" value="yes">했어요
					<input type="radio" name="neutered" value="no">안했어요
				</li>
				<li>
					<label for="hospital">동물병원</label>
					<input type="text" name="hospital" placeholder="예) SL동물병원 (하왕십리동)"></input>
				<li>
					<b>돌봄시 참고사항</b>
				</li>
			</ul>
		</section>	
			<textarea rows="10" cols="100"></textarea>
		<section id="bottom_logo">
		    <div>
		      <ul>
		      	<li onclick="location.href='/auth/index'">
		      		<img src="img/home1.png"><br>
		      		홈
		      	</li>
		      	<li>
		      		<img src="img/app_board1.png"><br>
		      		게시판
		      	</li>
		      	<li>
		      		<img src="img/people1.png"><br>
		      		매칭
		      	</li>
		      	<li>
		      		<img src="img/shop1.png"><br>
		      		쇼핑몰
		      	</li>
		      	<li onclick="location.href='/auth/myPage'">
		      		<img src="img/profile1.png"><br>
		      		마이페이지
		      	</li>
		      </ul>
	    	</div>
    	</section>
			<button id="save"><b>저장하기</b></button>
		</form>
	</div>
</body>
</html>