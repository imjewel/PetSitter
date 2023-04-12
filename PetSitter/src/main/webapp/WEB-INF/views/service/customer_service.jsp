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
	      		<span class="bold">펫정보에 추가로 반려동물을 등록하고싶어요.</span><br><br>
	      		키우는 강아지가 3마리여서 모두 등록을 하고싶습니다.<br>
	      		펫은 한마리만 등록가능한가요?<br><br>
	      		My Petsi의 답변<br>
	      		현재는 펫을 한마리만 등록가능합니다.<br>
	      		추후에 여러마리의 펫을 등록 가능하게 수정할예정입니다.<hr>
	      	</div>
	      	<div class="accordion-body">
	      		<span class="bold">게시물을 삭제하고 싶어요.</span><br><br>
	      		My Petsi의 답변<br>
	      		게시물 상세에 들어가서 게시물 삭제 가능합니다.<hr>
	      	</div>
	      </div>
	    </div>
	  </div>
	</div>
</main>
<%@ include file="../layout/footer.jsp" %>