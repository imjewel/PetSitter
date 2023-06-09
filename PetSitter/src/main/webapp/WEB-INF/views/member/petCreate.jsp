<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<head>
<link rel="stylesheet" type="text/css" href="/css/petCreate.css">
</head>
<%@ include file="../layout/header.jsp" %>
	<div class="center">
		<a href="javascript:history.back()"><</a>
		<h1>반려동물 등록하기</h1>
	</div>
	<form>
	<section class="photo">
		<img class="" src="../img/PetProfile.jpg">
	</section>
	<div class="pageList">
		<ul>
			<li>
				<b>기본 정보</b>
			</li>
			<li>
				<label for="name">이름</label>
				<input type="text" name="name" id="name"></input>
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
				<label for="pet_size">크기</label>
				<input type="radio" name="pet_size" id="pet_size" value="소형">소형
				<input type="radio" name="pet_size" id="pet_size" value="중형">중형
				<input type="radio" name="pet_size" id="pet_size" value="대형">대형
			</li>
			<li>
				<label for="weight">몸무게</label>
				<input type="text" name="weight" id="weight" placeholder="예) 2.8"></input>kg
			</li>
			<li>
				<label for="neutered">중성화</label>
				<input type="radio" name="neutered" id="neutered" value="했어요">했어요
				<input type="radio" name="neutered" id="neutered" value="안했어요">안했어요
			</li>
			<li>
				<label for="hospital">동물병원</label>
				<input type="text" name="hospital" id="hospital" placeholder="예) SL동물병원 (하왕십리동)"></input>
			</li>
		</ul>
	</div>
		<div class="btn-group" role="group" aria-label="Basic checkbox toggle button group">
			<input type="checkbox" class="btn-check" id="Rabies" name="vaccin" value="광견병" autocomplete="off">
			<label class="btn btn-outline-primary" for="Rabies">광견병</label>
			
			<input type="checkbox" class="btn-check" id="comprehensive" name="vaccin" value="종합 백신" autocomplete="off">
			<label class="btn btn-outline-primary" for="comprehensive">종합 백신</label>
			
			<input type="checkbox" class="btn-check" id="corona" name="vaccin" value="코로나 백신" autocomplete="off">
			<label class="btn btn-outline-primary" for="corona">코로나 백신</label>
			
			<input type="checkbox" class="btn-check" id="kennel" name="vaccin" value="켄넬코프" autocomplete="off">
			<label class="btn btn-outline-primary" for="kennel">켄넬코프</label>
			
			<input type="checkbox" class="btn-check" id="heartworm" name="vaccin" value="심장 사상충" autocomplete="off">
			<label class="btn btn-outline-primary" for="heartworm">심장 사상충</label>
			
			<input type="checkbox" class="btn-check" id="ectoparasite" name="vaccin" value="외부 기생충" autocomplete="off">
			<label class="btn btn-outline-primary" for="ectoparasite">외부 기생충</label>
		</div>
		<div class="note">
			<b style="padding-left:30px;">돌봄시 참고사항</b>	
			<textarea id="etc" rows="10" cols="100"></textarea>
		</div>
		<button type="button" id="btn-reply-save" class="btn btn-primary">저장하기</button>
	</form>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="/js/pet.js"></script>
<%@ include file="../layout/footer.jsp" %>