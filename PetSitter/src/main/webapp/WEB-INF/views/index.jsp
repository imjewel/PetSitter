<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%> 
 <head>
   <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/Board.css">
   <!-- <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"> -->
   <!-- <link href="/css/hover_set.css" rel="stylesheet"> -->
   <link href="/css/index.css" rel="stylesheet">
 </head> 
 <%@ include file="header.jsp" %>   
	<main>
   	<article class="main_banner">
   		<img class="banner_img" src="img/dogcat.png">
   		<div class="info"><h2>빠르고 간편하게 <br>펫시터를 찾으세요!</h2><br>
   		  <span>우리아이에게 외로운 시간대신<br>행복한 시간을 선사하세요.</span></div>
   		<div class="sitter">원하는 날을 골라 반려동물을<br>돌보며 수입을 벌어보세요.</div>
   		<a href="" class="sitter_button">MyPetsi 펫시터<br>등록하기</a>
   	</article>
	<article class="matching_result">
		<h3 class="title">new 매칭!</h3>
		<a href="#"><p class="more">&raquo;</p></a>
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
			<h3 class="title"><a href="notice_borad.jsp">게시판으로 이동</a></h3>
			<a href="notice_borad.jsp"><p class="more">&raquo;</p></a>
		</div>
		<ul class="width">
			<li>
				<div class="subject">펫시터를 찾아요</div>
				<div class="writer">펫시터 아이디</div>
				<div class="clear"></div>
				<div class="date">2023.03.03</div>
			</li>
			<a href="" title="Button fade orange" id="plus" class="button btnFade btnOrange">더보기</a>
	    </ul>
	  </article>
	  <article id="board">
		  <div class="matching_result">
			<h3 class="title"><a href="">공지사항으로 이동</a></h3>
			<a href="#"><p class="more">&raquo;</p></a>
		  </div>
		  <ul>
			<li>
				<div class="subject">공지사항 내용</div>
			</li>
	      </ul>
	 </article>
   </main>
<%@ include file="footer.jsp" %>
