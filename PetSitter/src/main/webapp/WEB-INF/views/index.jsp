<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "sec" uri = "http://www.springframework.org/security/tags" %>

<sec:authorize access="isAuthenticated()">
	<sec:authentication property="principal" var="principal"/>
</sec:authorize>

<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>PetSitter</title>
  <link href="/css/index.css" rel="stylesheet">
</head>
<body>
  <div class="container"> 
    <div class="header">
      <a href="basic.html"><img id="logo" src="/img/logo1.png"></a>
      <input type="image" id="search-Btn" src="img/search.png">
		<c:choose>
      	<c:when test="${empty principal}">
	      <ul>
		      <li><button onclick="location.href='/auth/login'">로그인</button></li>
	      </ul>      	
      	</c:when>
      	<c:otherwise>
	      <ul>
	      	  <li><button onclick="location.href='board/saveForm'">글쓰기</button></li>
		      <li><button onclick="location.href='logout'">로그아웃</button></li>
		      <li><button onclick="location.href='update'">회원정보</button></li>
	      </ul>
      	</c:otherwise>
      </c:choose>
      <input type="image" id="search-Btn" src="/img/search.png">
    </div>
    
	<div class="container">
		<c:forEach var="board" items="${board.content}">
			<div class="card m-2">
				<div class="card-body">
					<h4 class="card-title">${board.title}</h4>
					<a href="/board/${board.id}" class="btn btn-primary">상세보기</a>
				</div>
			</div>
		</c:forEach>
		<ul class="pagination justify-content-center">
			<c:choose>
				<c:when test="${board.first}">	
					<li class="page-item disabled"><a class="page-link"
						href="?page=${board.number-1}">Previous</a></li> <!-- 첫번째 페이지일 경우 : 버튼 비활성화 -->
				</c:when>
				<c:otherwise>
					<li class="page-item"><a class="page-link"
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
	</div>
    
    <!-- 
    <div class="footer">
      <hr>
      <h3>PetSitter</h3>
      <hr>
      <img src="/img/footerlogo.png">
      <p><a href="">PetSitter 고객센터 바로가기</a></p>
      <p>
        회사 : MyPetSitter<br>
        도로명주소 : xx시 xx구 xx동 xx번길<br>
        상담원 업무시간<span id="grey">(토,일,공휴일 휴무)</span><br>
        이메일 문의 dog_cat@myPetSitter.com
      </p>
    </div>
     -->
    <div class="menu">
      <ul class="menu_ul">
        <li><a href="/index"><img src="/img/home1.png"><br>홈</a></li>
        <li><a href=""><img src="/img/app_board1.png"><br>게시판</a></li>
        <li><a href="/board/list"><img src="/img/people1.png"><br>매칭</a></li>
        <li><a href=""><img src="/img/shop1.png"><br>쇼핑몰</a></li>
        <li><a href="/myPage"><img src="/img/profile1.png"><br>마이페이지</a></li>
      </ul>
    </div>
  </div>
</body>
</html>