<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>
<head>
	<link href="/css/Board.css" rel="stylesheet">
</head>
<article id="matching_result">
			<h3 class="title"><a href="/matching">new 매칭!👨‍👦‍👦</a></h3>
			<a href="/matching" class="more">&raquo;</a>
			<div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="carousel">
			  <div class="carousel-inner">
			    <div class="carousel-item active">
			      <img src="/img/profile1.jpg" class="d-block w-100" >
			      <div class="carousel-caption d-md-block">
			        <h5><b>ID: 펫시터 아이디</b></h5>
			        <p><b>지역: <br>날짜: </b></p>
			      </div>
			    </div>
			    <div class="carousel-item">
			      <img src="/img/profile2.jpg" class="d-block w-100">
			      <div class="carousel-caption d-md-block">
			        <h5><b>ID: 펫시터 아이디</b></h5>
			        <p><b>지역: <br>날짜: </b></p>
			      </div>
			    </div>
			    <div class="carousel-item">
			      <img src="/img/profile3.jpg" class="d-block w-100">
			      <div class="carousel-caption d-md-block">
			      	<h5><b>ID: 펫시터 아이디</b></h5>
			        <p><b>지역: <br>날짜: </b></p>
			      </div>
			    </div>
			  </div>
			  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
			    <span class="carousel-control-prev" aria-hidden="true">&lsaquo;</span>
			    <span class="visually-hidden">Previous</span>
			  </button>
			  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
			    <span class="carousel-control-next" aria-hidden="true">&rsaquo;</span>
			    <span class="visually-hidden">Next</span>
			  </button>
			</div>
		</article>
<div class="form_write">
	<form>
		<div class="form-group">
			<label for="title">Title</label>
			<input type="text" class="form-control" placeholder="Enter title" id="title">
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
	        height: 300
	      });
	</script>
	<script type="text/javascript" src="/js/board.js"></script>
<%@ include file="../layout/footer.jsp"%>

