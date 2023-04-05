<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<footer>
   <img src="img/footerlogo.png">
    <a href=""><spen class="bold">MyPetSi 고객센터 바로가기</spen></a>
    <p>
      회사 : MyPetSi<br>
      도로명주소 : xx시 xx구 xx동 xx번길<br>
      상담원 업무시간<span id="grey">(토,일,공휴일 휴무)</span><br>
      이메일 문의 dog_cat@myPetSitter.com
    </p>
</footer>
<div class="bottom_menu">
  <li><a href="index"><img src="img/home.png"><br>홈</a></li>
  <li><a href="notice_board"><img src="img/board.png"><br>게시판</a></li>
  <li><a href=""><img src="img/people.png"><br>매칭</a></li>
  <li><a href="shopping"><img src="img/shop.png"><br>쇼핑몰</a></li>
  <li><a href=""><img src="img/profile.png"><br>마이페이지</a></li>
</div>
</div>
  <div class="moveTopBtn"><img src="img/pet_icon.png"><br>Top</div>
  <script src="${pageContext.request.contextPath}/js/petMasterMatchingBoard.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" 
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous">
  </script>
  <script>
	//top 버튼
	  const $topBtn = document.querySelector(".moveTopBtn");
	// 버튼 클릭 시 맨 위로 이동   
	  $topBtn.onclick = () => {
	  window.scrollTo({ top: 0, behavior: "smooth" });
	  }
  </script>
</body>
</html>