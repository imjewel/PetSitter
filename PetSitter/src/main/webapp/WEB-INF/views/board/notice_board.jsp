<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<head>
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/Board.css">
  <!-- <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"> -->
  <link href="/css/hover.css" rel="stylesheet">
</head>
<%@ include file="../layout/header.jsp" %>
    <main>
    	<div class="underline">
	    	<h2><a href="" class="matching_borad">매칭게시판</a></h2>
	     	<h2><a href="" class="integrated_borad">통합게시판</a></h2>
	      	<div class="postcategory two">
	        	<ul>
	          		<li><a href="">구인게시판</a></li>
	          		<li><a href="">구직게시판</a></li>
	        	</ul>
	        </div>
	        <div class="postcategory four">
		        <ul>
		          <li><a href="">자유게시판</a></li>
		          <li><a href="">정보게시판</a></li>
		          <li><a href="">친목게시판</a></li>
		          <li><a href="">내아이자랑</a></li>
		        </ul>
		    </div>
		  </div>
		<article id="matching_result">
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
			<h2 class="title">Find : Pet Sitter</h2>
			<a href="" title="Button fade orange" id="write" class="button btnFade btnOrange">글쓰기</a>
			<ul class="width">
				<li>
					<div class="subject">펫시터를 찾아요</div>
					<div class="writer">펫시터 아이디</div>
					<div class="clear"></div>
					<div class="date">2023.03.03</div>
				</li>
		    </ul>
		    <a class="button btnFade btnOrange">더보기</a>
		  </article>
      </main>
      <%@ include file="../layout/footer.jsp" %>
      <script>
    	//게시판 mouseover
		  var matching = document.querySelector(".matching_borad");
		  var hide2 = document.querySelector(".two");
		  var integrated = document.querySelector(".integrated_borad");
		  var hide4 = document.querySelector(".four");
		  var menu = document.querySelector(".underline");
		  
		  matching.addEventListener("mouseover", function(){
		    hide2.style.display="inline-block";
		    hide4.style.display="none";
		  })  
	
		  integrated.addEventListener("mouseover", function(){
		    hide4.style.display="inline-block";
		    hide2.style.display="none";
		  })
      </script>  