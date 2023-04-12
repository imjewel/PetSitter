function execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var roadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 참고 항목 변수

                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('postcode').value = data.zonecode;
                document.getElementById("road").value = roadAddr;
                document.getElementById("jibun").value = data.jibunAddress;
                
                // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
                if(roadAddr !== ''){
                    document.getElementById("extra").value = extraRoadAddr;
                } else {
                    document.getElementById("extra").value = '';
                }

                var guideTextBox = document.getElementById("guide");
                // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
                if(data.autoRoadAddress) {
                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                    guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
                    guideTextBox.style.display = 'block';

                } else if(data.autoJibunAddress) {
                    var expJibunAddr = data.autoJibunAddress;
                    guideTextBox.innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
                    guideTextBox.style.display = 'block';
                } else {
                    guideTextBox.innerHTML = '';
                    guideTextBox.style.display = 'none';
                }
            }
        }).open();
    }
  
let index={
	init: function(){
		$("#btn-save").on("click",()=>{
			//화살표 함수사용 이유: this를 바인딩하기 위해 사용
			this.save();
		});
		$("#btn-matchingsave").on("click",()=>{
			//화살표 함수사용 이유: this를 바인딩하기 위해 사용
			this.matchingsave();
		});
		$("#btn-delete").on("click",()=>{
			//화살표 함수사용 이유: this를 바인딩하기 위해 사용
			this.deleteById();
		});
		$("#btn-update").on("click",()=>{
			//화살표 함수사용 이유: this를 바인딩하기 위해 사용
			this.update();
		});
		$("#btn-reply-save").on("click",()=>{
			//화살표 함수사용 이유: this를 바인딩하기 위해 사용
			this.replySave();
		});
	},
	
	save: function(){
		//alert('user의 save함수 호출됨');
		let data={
			title: $("#title").val(),
			content: $("#content").val(),
			boardName: $("#boardName").val()
		};
		$.ajax({ 
			type:"POST",
			url:"/api/board",
			data:JSON.stringify(data), 
			contentType:"application/json; charset=utf-8",
			dataType:"json" 
		}).done(function(resp){
			alert("글쓰기가 완료되었습니다.");
			location.href="/auth/board/list";
		}).fail(function(error){
			alert(JSON.stringify(error));
		});
	},
	
	matchingsave: function(){
		//alert('user의 save함수 호출됨');
		let data={
			title: $("#title").val(),
			content: $("#content").val(),
			boardName: $("#boardName").val(),
            postcode: $("#postcode").val(),
            road: $("#road").val(),
            jibun: $("#jibun").val(),
            detail: $("#detail").val(),
            extra: $("#extra").val(),
			category: $("input[name='category']:checked").val(),
			pet_size: $("input[name='pet_size']:checked").val()
		};
		$.ajax({ 
			type:"POST",
			url:"/api/board",
			data:JSON.stringify(data), 
			contentType:"application/json; charset=utf-8",
			dataType:"json" 
		}).done(function(resp){
			alert("글쓰기가 완료되었습니다.");
			location.href="/auth/board/list";
		}).fail(function(error){
			alert(JSON.stringify(error));
		});
	},
	 

	update: function(){
		let id=$("#id").val();
		
		let data={
			title: $("#title").val(),
			content: $("#content").val(),
			boardName: $("#boardName").val()
		};
		console.log(id);
		console.log(data);
		$.ajax({ 
			type:"PUT",
			url:"/api/board/"+id,
			data:JSON.stringify(data), 
			contentType:"application/json; charset=utf-8",
			dataType:"json" 
		}).done(function(resp){
			alert("수정이 완료되었습니다.");
			location.href=`/auth/board/${id}`;
		}).fail(function(error){
			alert(JSON.stringify(error));
		});
	},
	
	deleteById: function(){
		let id=$("#id").text();
		
		$.ajax({ 
			type:"DELETE",
			url:"/api/board/"+id,
			dataType:"json" 
		}).done(function(resp){
			alert("삭제가 완료되었습니다.");
			location.href="/auth/board/list";
		}).fail(function(error){
			alert(JSON.stringify(error));
		});
	},
	
	replySave: function(){
		let data={
			content: $("#reply-content").val()
		};
		
		let boardId = $("#boardId").val();
		
		console.log(data);
		
		$.ajax({ 
			type:"POST",
			url:`/api/board/${boardId}/reply`,
			data:JSON.stringify(data), 
			contentType:"application/json; charset=utf-8",
			dataType:"json" 
		}).done(function(resp){
			alert("댓글작성이 완료되었습니다.");
			location.href=`/auth/board/${boardId}`;
		}).fail(function(error){
			alert(JSON.stringify(error));
		});
	},
	
	replyDelete: function(boardId, replyId){
		$.ajax({ 
			type:"DELETE",
			url:`/api/board/${boardId}/reply/${replyId}`,
			dataType:"json" 
		}).done(function(resp){
			alert("댓글 삭제 성공");
			location.href=`/auth/board/${boardId}`;
		}).fail(function(error){
			alert(JSON.stringify(error));
		});
	},
	
	replySave: function(){
		let data={
			content: $("#reply-content").val()
		};
		
		let boardId = $("#boardId").val();
		
		console.log(data);
		
		$.ajax({ 
			type:"POST",
			url:`/api/board/${boardId}/reply`,
			data:JSON.stringify(data), 
			contentType:"application/json; charset=utf-8",
			dataType:"json" 
		}).done(function(resp){
			alert("댓글작성이 완료되었습니다.");
			location.href=`/auth/board/${boardId}`;
		}).fail(function(error){
			alert(JSON.stringify(error));
		});
	},
	
	replyDelete: function(boardId, replyId){
		$.ajax({ 
			type:"DELETE",
			url:`/api/board/${boardId}/reply/${replyId}`,
			dataType:"json" 
		}).done(function(resp){
			alert("댓글 삭제 성공");
			location.href=`/auth/board/${boardId}`;
		}).fail(function(error){
			alert(JSON.stringify(error));
		});
	},
}
index.init();