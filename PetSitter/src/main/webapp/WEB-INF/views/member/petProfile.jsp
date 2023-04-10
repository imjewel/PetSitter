<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="/css/petProfile.css">
<meta charset="UTF-8">
<title>My Page</title>
</head>
<body>
	<div class="container" id="container">
		<form>
		<header>
		<!-- <div id="head_list"></div> -->
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
					<input type="text" name="name" id="name" value="${pet.name}"></input>
				</li>
				<li>
					<label for="gender">성별</label>
					<input type="radio" name="gender" id="gender" value="남자아이">남자아이
					<input type="radio" name="gender" id="gender" value="여자아이">여자아이
				</li>
				<li>
					<label for="category">카테고리</label>
					<input type="radio" name="category" id="category" value="강아지">강아지
					<input type="radio" name="category" id="category" value="고양이">고양이
				</li>
				<li>
					<label for="pet_type">견종</label>
					<input type="text" name="pet_type" id="pet_type" placeholder="예) 말티즈"></input>
				</li>
				<li>
				  <label for="age">나이</label>
				  <input type="text" name="age" id="age">
				</li>
				<li>
					<label for="size">크기</label>
					<input type="radio" name="size" id="size" value="소형">소형
					<input type="radio" name="size" id="size" value="중형">중형
					<input type="radio" name="size" id="size" value="대형">대형
				</li>
				<li>
					<label for="weight">몸무게</label>
					<input type="text" name="weight" id="weight" placeholder="예) 2.8"></input>kg
				</li>
				<li>
					<label for="neutered">중성화</label>
					<input type="radio" name="neutered" id="neutered" value="yes">했어요
					<input type="radio" name="neutered" id="neutered" value="no">안했어요
				</li>
				<li>
					<label for="hospital">동물병원</label>
					<input type="text" name="hospital" id="hospital" placeholder="예) SL동물병원 (하왕십리동)"></input>
				</li>
			</ul>
		</section>
			<div class="btn-group" role="group" aria-label="Basic checkbox toggle button group">
				<input type="checkbox" class="btn-check" id="Rabies" autocomplete="off">
				<label class="btn btn-outline-primary" for="Rabies">광견병</label>
				
				<input type="checkbox" class="btn-check" id="comprehensive" autocomplete="off">
				<label class="btn btn-outline-primary" for="comprehensive">종합 백신</label>
				
				<input type="checkbox" class="btn-check" id="corona" autocomplete="off">
				<label class="btn btn-outline-primary" for="corona">코로나 백신</label>
				
				<input type="checkbox" class="btn-check" id="kennel" autocomplete="off">
				<label class="btn btn-outline-primary" for="kennel">켄넬코프</label>
				
				<input type="checkbox" class="btn-check" id="heartworm" autocomplete="off">
				<label class="btn btn-outline-primary" for="heartworm">심장 사상충</label>
				
				<input type="checkbox" class="btn-check" id="ectoparasite" autocomplete="off">
				<label class="btn btn-outline-primary" for="ectoparasite">외부 기생충</label>
			</div>
		<section id="etc">
			<b style="padding-left:30px;">돌봄시 참고사항</b>	
			<textarea rows="10" cols="100"></textarea>
		</section>
		<button type="button" id="btn-petsave"><b>저장하기</b></button>
		</form>
	</div>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="/js/pet.js"></script>
</body>
</html>