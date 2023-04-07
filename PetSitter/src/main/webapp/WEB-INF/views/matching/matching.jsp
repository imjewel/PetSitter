<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp" %>
<head>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/Board.css">
	<link href="/css/matching.css" rel="stylesheet">
</head>
    <main>
       <article>
    		<div class="home_title"><h2>나와 매칭된 회원들을 둘러보고<br> 대화를 나누어 보세요!</h2></div>
    		<div class="home_info">우리 아이의 사회성을 길러줄<br>매칭된 회원과의 산책은<br>어떠신가요?</div>
    		<img class="matching_home" src="/img/welshcorgi.png">
      </article>
      <article id="board">
		<h3 class="list_title">나의 매칭된 회원목록 🐶</h3>
		<ul>
			<li class="matching_user">
				<img class="profile" src="/img/profile1.jpg">
				<div class="id">펫시터 ID : 멈머</div>
				<div class="location"><img src="/img/marker.png"> 지역 : 수원시 팔달구</div>
				<div class="msg"><a htef="#" ><img src="/img/msg.png"></a></div>
			</li>
			<li class="matching_user">
				<img class="profile" src="/img/profile1.jpg">
				<div class="id">펫시터 ID : 멈머</div>
				<div class="location"><img src="/img/marker.png"> 지역 : 수원시 팔달구</div>
				<div class="msg"><a htef="#" ><img src="/img/msg.png"></a></div>
			</li>
			<li class="matching_user">
				<img class="profile" src="/img/profile1.jpg">
				<div class="id">펫시터 ID : 멈머</div>
				<div class="location"><img src="/img/marker.png"> 지역 : 수원시 팔달구</div>
				<div class="msg"><a htef="#" ><img src="/img/msg.png"></a></div>
			</li>
	    </ul>		
	  </article>
    </main>
<%@ include file="../layout/footer.jsp" %>
