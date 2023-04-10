<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="/css/petProfile.css">
<meta charset="UTF-8">
<title>Pet Profile</title>
</head>
<body>
	<div class="container" id="container">
		<form>
		<header>
		<!-- <div id="head_list"></div> -->
		<a href="myPage" class="btn btn-primary"><</a>
		<h1>반려동물 정보</h1>
		</header>
		<section id="photo"></section>
		<section id="pageList">
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
			</ul>
		</section>
		<section>
			<b style="padding-left:30px;">돌봄시 참고사항</b>	
			${pet.etc}
		</section>
		<button type="button" onclick="location.href='petUpdate'"><b>수정하러 가기</b></button>
		<button type="button" onclick="location.href='petUpdate'"><b>삭제하기</b></button>
		</form>
	</div>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="/js/pet.js"></script>
</body>
</html>