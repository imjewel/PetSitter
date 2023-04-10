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
			<label for="content">Content:</label>
			<textarea class="form-control summernote" rows="5" id="content"></textarea>
		</div>
	</form>
	<button id="btn-save" class="btn btn-primary">저장</button>
</div>
	<script>
	      $('.summernote').summernote({
	        tabsize: 2,
	        height: 500
	      });
	</script>
	<script type="text/javascript" src="/js/board.js"></script>
<%@ include file="../layout/footer.jsp"%>

