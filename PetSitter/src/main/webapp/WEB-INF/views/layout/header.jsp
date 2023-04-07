<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "sec" uri = "http://www.springframework.org/security/tags" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<sec:authorize access="isAuthenticated()">
	<sec:authentication property="principal" var="principal"/>
</sec:authorize>
<!DOCTYPE html>
	<html lang="ko">
		<head>
			<meta charset="UTF-8">
			<meta http-equiv="X-UA-Compatible" content="IE=edge">
			<meta name="viewport" content="width=device-width, initial-scale=1.0">
			<title>MY PETSI&nbsp;&#9786;</title>
			<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
			<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
			<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
			<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.css" rel="stylesheet">
    		<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.js"></script>
			<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css">
			<link href="/css/basic.css" rel="stylesheet">
		</head>
		<body>
	 		<div class="container"> 
	    		<header>
	      			<a href="/index"><img id="logo" src="/img/logo1.png"></a>
	      			<div class="login_button">
				      	<c:choose>
				      		<c:when test="${empty principal}">
						      <ul>
							      <li><button onclick="location.href='/auth/login'">로그인</button></li>
						      </ul>      	
				      		</c:when>
					      	<c:otherwise>
							    <ul>
								    <li><button onclick="location.href='logout'">로그아웃</button></li>
								    <li><button onclick="location.href='myProfile'">회원정보</button></li>
							    </ul>
			      			</c:otherwise>
		      			</c:choose>
	      			</div>
	    		</header>