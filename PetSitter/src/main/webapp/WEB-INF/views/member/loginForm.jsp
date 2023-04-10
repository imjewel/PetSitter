<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="/css/loginForm.css">
<meta charset="UTF-8">
<title>Login Form</title>
</head>
<body>
<div class="container">
  <div class="form-container sign-in-container">
 	<div id="bg_container">
      <h1>Sign in</h1>
      <form action="/auth/loginProc" method="post">
	      <input type="text" id="username" name="username" placeholder="ID" />
	      <input type="password" name="password" placeholder="Password" />
	      <a href="#">비밀번호를 잊어버리셨나요?</a>
	  	<div id="social_login1">
	  	  <a href="#"><img src="/img/naver.png" style="width:43%"></a>
	  	  </div>
	  	  <div id="social_login2">
	 	  <a href="#"><img src="/img/kakao.png"></a>
	 	</div>
	 	<button>Sign In</button>
 	  </form>
      <button onclick="location.href='/auth/signUp'">Sign Up</button>
  </div>
  </div>
 </div>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="/js/member.js"></script>
</body>
</html>