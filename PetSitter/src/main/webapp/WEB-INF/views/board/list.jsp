<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>	
<%@ include file="../layout/header.jsp" %>
<head>
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/Board.css">
  <link href="/css/hover.css" rel="stylesheet">
</head>
    <main>
    	<div class="underline">
	    	<h2><a href="" class="matching_borad">매칭게시판</a></h2>
	     	<h2><a href="" class="integrated_borad">통합게시판</a></h2>
	     	
	      	<div class="postcategory two">
	        	<ul>
       				<li><a href="/auth/board/list">구인게시판</a></li>
	          		<li><a href="">구직게시판</a></li>
	        	</ul>
	        </div>
	  
	        <div class="postcategory four">
		        <ul>
		          <li><a href="/auth/board/listFreeBoard">자유게시판</a></li>
		          <li><a href="">정보게시판</a></li>
		          <li><a href="">친목게시판</a></li>
		          <li><a href="">내아이자랑</a></li>
		        </ul>
		    </div>
		  </div>
		
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
			    <span class="visually-hidden">Prev</span>
			  </button>
			  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
			    <span class="carousel-control-next" aria-hidden="true">&rsaquo;</span>
			    <span class="visually-hidden">Next</span>
			  </button>
			</div>
		</article>

		<article id="board">
			<h4 class="title">글목록</h4>
			<a href="/board/saveFormFindPet" title="Button fade orange" id="write" class="button btnFade btnOrange">글쓰기</a>
			<ul class="width">
				<li>
										
				<c:forEach var="board" items="${board.content}">
					<input type="hidden" id="boardName" value="findPet"/>
					<!--<c:if test="${board.boardName == 'findPet'}">-->
					<div class="card m-2">
						<div class="card-body">
							<h4 class="card-title"><a href="/auth/board/${board.id}">${board.title}</a></h4><br/>
							<h6 class="card-title"><a href="/auth/board/${board.id}">${board.member.username}</a></h6>
						</div>
					</div>
					<!--</c:if>-->
					</c:forEach>
				
				</li>
		    </ul>
			<ul class="center">
				<c:choose>
					<c:when test="${board.first}">
						<li class="page-item disabled left"><a class="page-link"
							href="?page=${board.number-1}">Previous</a></li>
					</c:when>
					<c:otherwise>
						<li class="page-item left"><a class="page-link"
							href="?page=${board.number-1}">Previous</a></li>
					</c:otherwise>
				</c:choose>
				<c:choose>
					<c:when test="${board.last}">
						<li class="page-item disabled"><a class="page-link"
							href="?page=${board.number+1}">Next</a></li>
					</c:when>
					<c:otherwise>
						<li class="page-item"><a class="page-link"
							href="?page=${board.number+1}">Next</a></li>
					</c:otherwise>
				</c:choose>
			 </ul>

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