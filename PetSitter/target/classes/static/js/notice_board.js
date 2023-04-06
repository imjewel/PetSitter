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