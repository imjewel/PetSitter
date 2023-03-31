<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="/css/signUpForm.css">
<meta charset="UTF-8">
<title>Login Form</title>
</head>
<body>
<div class="container" id="container">
  <div class="form-container sign-in-container">
    <form method="post">
      <h1>Sign Up</h1>
      <input type="text" id="username" name="username" placeholder="ID" />
      <input type="password" id="password" name="password" placeholder="Password" />
      <input type="text" id="nickname" name="nickname" placeholder="NickName" />
      <input type="date" id="birth" name="birth" placeholder="BirthDay" />
      <input type="text" id="address" name="address" placeholder="Address" />
      <input type="text" id="gender" name="gender" placeholder="Gender" />
      <input type="tel" id="phone" name="phone" placeholder="Phone" />
      <button id="btn-save" class="btn btn-primaly">Sign Up</button>
      
    </form>
  </div>
</div>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="/js/member.js"></script>
</body>
</html>