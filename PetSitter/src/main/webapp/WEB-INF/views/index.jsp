<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<%@ include file="layout/header.jsp" %> 
 <head>
   <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/Board.css">
   <link href="/css/index.css" rel="stylesheet">
 </head>   
<main>
   	<article class="main_banner">
   		<img class="banner_img" src="img/dogcat.png">
   		<div class="info"><h2>빠르고 간편하게 <br>펫시터를 찾으세요!</h2><br>
   		  <span>우리아이에게 외로운 시간대신<br>행복한 시간을 선사하세요.</span></div>
   		<div class="sitter">원하는 날을 골라 반려동물을<br>돌보며 수입을 벌어보세요.</div>
   		<a href="/myPage" class="sitter_button">MyPetsi 펫정보<br>등록하기</a>
   	</article>
	<article class="matching_result">
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
	<article id="board">
		<div class="matching_result">
			<h3 class="title"><a href="/auth/board/list">게시판으로 이동📋</a></h3>
			<a href="/auth/board/list" class="more">&raquo;</a>
		</div>
		<ul class="width">
			<li>
				<c:forEach var="board" items="${board.content}">
					<div class="card m-2">
						<div class="card-body">
							<h4 class="card-title"><a href="/auth/board/${board.id}">${board.title}</a></h4><br/>
							<h6 class="card-title"><a href="/auth/board/${board.id}">${board.member.username}</a></h6>
						</div>
					</div>
				</c:forEach>
			</li>
	    </ul>
	  </article>
	  <article id="board">
		  <div class="matching_result">
			<h3 class="title"><a href="/customer_service">공지사항📃</a></h3>
			<a href="/customer_service" class="more">&raquo;</a>
		  </div>
		  <ul>
			<li>
				<div class="subject">서비스 점검 안내</div>
			</li>
			<li>
				<div class="subject">my Petsi 서비스 이용 수칙</div>
			</li>
	      </ul>
	 </article>
   </main>
<%@ include file="layout/footer.jsp" %>