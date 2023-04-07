<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp" %>
<head>
	<link href="/css/board.css" rel="stylesheet">
	<link href="/css/customer_service.css" rel="stylesheet">
</head>
  <main>
  	<article id="board">
	 	<h3 class="customer_title">어서오세요! My Petsi 고객센터입니다.</h3>
	 	<img class="banner_img" src="img/customer_banner.jpg">
    </article> 
 
	<div class="accordion accordion-flush" id="accordionFlushExample">
	  <div class="accordion-item">
	    <h2 class="accordion-header" id="flush-headingOne">
	      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseOne" aria-expanded="false" aria-controls="flush-collapseOne">
	        공지사항📃
	      </button>
	    </h2>
	    <div id="flush-collapseOne" class="accordion-collapse collapse" aria-labelledby="flush-headingOne" data-bs-parent="#accordionFlushExample">
	      <div class="accordion-body">
	      	공지사항 제목1<br>
	      	공지사항 내용
	      </div>
	      <div class="accordion-body">
	      	공지사항 제목2<br>
	      	공지사항 내용
	      </div>
	    </div>
	  </div>
	  <div class="accordion-item">
	    <h2 class="accordion-header" id="flush-headingTwo">
	      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseTwo" aria-expanded="false" aria-controls="flush-collapseTwo">
	        자주 묻는 질문🙋‍♂️
	      </button>
	    </h2>
	    <div id="flush-collapseTwo" class="accordion-collapse collapse" aria-labelledby="flush-headingTwo" data-bs-parent="#accordionFlushExample">
	      <div class="accordion-body">
			<div class="accordion-body">
	      		자주 묻는 질문 제목1<br>
	      		자주 묻는 질문 내용
	      	</div>
	      	<div class="accordion-body">
	      		자주 묻는 질문 제목2<br>
	      		자주 묻는 질문 내용
	      	</div>
		  </div>
	    </div>
	  </div>
	  <div class="accordion-item">
	    <h2 class="accordion-header" id="flush-headingThree">
	      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseThree" aria-expanded="false" aria-controls="flush-collapseThree">
	        1:1문의⌨️
	      </button>
	    </h2>
	    <div id="flush-collapseThree" class="accordion-collapse collapse" aria-labelledby="flush-headingThree" data-bs-parent="#accordionFlushExample">
	      <div class="accordion-body">
	      	<div class="accordion-body">
	      		<a href="" class="write">1:1문의 작성하러가기 <span class="gray"> 답변하기까지 다소 시간이 걸릴 수 있습니다.</span></a>
	      	</div>
	      	<div class="accordion-body">
	      		1:1문의 제목1<br>
	      		1:1문의 내용
	      	</div>
	      	<div class="accordion-body">
	      		1:1문의 제목2<br>
	      		1:1문의 내용
	      	</div>
	      </div>
	    </div>
	  </div>
	</div>
</main>
<%@ include file="../layout/footer.jsp" %>