<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>
<head>
	<link href="/css/Board.css" rel="stylesheet">
</head>
<div class="form_write">
	<form>
		<div class="form-group">
			<label for="title">Title</label>
			<input type="text" class="form-control" placeholder="Enter title" id="title">
		</div>
		<div class="form-group">
			<label for="boardName">Board Name</label>
			<select class="form-control" id="boardName">
				<option value="findPet">Find : Pet</option>
				<option value="findSitter">Find : Sitter</option>
				<option value="freeBoard">자유게시판</option>
				<option value="infoBoard">정보게시판</option>
				<option value="friendBoard">친목게시판</option>
				<option value="picBoard">내아이자랑</option>
			</select>
		</div>
		
		<div class="form-group">
			<label for="boardName">Address</label>
			<input type="text" class="form-control" id="postcode" placeholder="우편번호">
			<input type="button" class="form-control" onclick="execDaumPostcode()" value="우편번호 찾기"><br>
			<input type="text" class="form-control" id="road" placeholder="도로명주소">
			<input type="text" class="form-control" id="jibun" placeholder="지번주소">
			<span id="guide" class="form-control" style="color:#999;display:none"></span>
			<input type="text" class="form-control" id="detail" placeholder="상세주소">
			<input type="text" class="form-control" id="extra" placeholder="참고항목">
		</div>
      	<br>
      	
		<div class="form-group">
			<label for="category">카테고리</label>
			<input type="radio" name="category" id="category" value="강아지">강아지
			<input type="radio" name="category" id="category" value="고양이">고양이
		</div>
		
		<div class="form-group">
			<label for="pet_size">크기</label>
			<input type="radio" name="pet_size" id="pet_size" value="소형">소형
			<input type="radio" name="pet_size" id="pet_size" value="중형">중형
			<input type="radio" name="pet_size" id="pet_size" value="대형">대형	
		</div>      
					
		<div class="form-group">
			<label for="content">Content:</label>
			<textarea class="form-control summernote" rows="5" id="content"></textarea>
		</div>
	</form>
	<button id="btn-matchingsave" class="btn btn-primary">저장</button>
</div>
	<script>
	      $('.summernote').summernote({
	        tabsize: 2,
	        height: 500
	      });
	</script>
	<script type="text/javascript" src="/js/board.js"></script>
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<%@ include file="../layout/footer.jsp"%>