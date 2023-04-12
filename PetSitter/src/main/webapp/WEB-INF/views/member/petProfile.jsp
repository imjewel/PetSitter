<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<head>
<link rel="stylesheet" type="text/css" href="/css/petProfile.css">
<meta charset="UTF-8">
</head>
<%@ include file="../layout/header.jsp" %>
	<div class="center">
		<a href="myPage"><</a>
		<h1>반려동물 정보</h1>
	</div>
	<div id="photo">
		<img class="" src="../img/PetProfile.jpg">
	</div>
	<form>
		<div id="pageList">
			<ul>
				<li>
					<b>기본 정보</b>
				</li>
				<li>
					<label>이름</label>
					${pet.name}
				</li>
				<li>
					<label>성별</label>
					${pet.gender}
				</li>
				<li>
					<label>카테고리</label>
					${pet.category}
				</li>
				<li>
					<label>견종</label>
					${pet.pet_type}
				</li>
				<li>
				  <label>나이</label>
				  ${pet.age}
				</li>
				<li>
					<label>크기</label>
					${pet.pet_size}
				</li>
				<li>
					<label>몸무게</label>
					${pet.weight}
				</li>
				<li>
					<label>중성화</label>
					${pet.neutered}
				</li>
				<li>
					<label>동물병원</label>
					${pet.hospital}
				</li>
				<li>
					<label>접종여부</label>
					${pet.vaccin}
				</li>
				<li>
					<label><b>참고사항</b></label>
					${pet.etc}
				</li>
			</ul>
		</div>
		<div class="ok">
			<button type="button" onclick="location.href='petUpdate'" class="btn-pet"><b>수정하러 가기</b></button>
		</div>
	</form>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="/js/pet.js"></script>
<%@ include file="../layout/footer.jsp" %>