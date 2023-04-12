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
    
let index = {
    init: function() {
        $("#btn-save").on("click", (event) => {
            this.save(event);
        });
        $("#btn-update").on("click", (event) => {
            this.update(event);
        });
		$("#btn-delete").on("click",()=>{
		//화살표 함수사용 이유: this를 바인딩하기 위해 사용
		this.deleteById();
		});
        /**
        $("#btn-login").on("click", (event) => {
    		this.login(event);
    	});
    	 */
    },


    save: function(event) {
        event.preventDefault();
        let data = {
			id: $("#id").val(),
			username: $("#username").val(),
            password: $("#password").val(),
            nickname: $("#nickname").val(),
            birth: $("#birth").val(),
            postcode: $("#postcode").val(),
            road: $("#road").val(),
            jibun: $("#jibun").val(),
            detail: $("#detail").val(),
            extra: $("#extra").val(),
            gender: $("#gender").val(),
            phone: $("#phone").val()
        };
        $.ajax({
            type: "POST",
            url: "/auth/joinProc",
            data: JSON.stringify(data),
            contentType: "application/json; charset=utf-8",
            //application/json 뒤에는 ; 붙이면 안되고 charset=utf-8 쓰면 안됨
            dataType: "json"
        }).done(function(resp) {
			if(resp.status === 500){
				alert("회원가입에 실패하였습니다.");
			} else{
				alert("회원가입이 완료되었습니다.");
            location.href = "/auth/login";				
			}
        }).fail(function(error) {
            alert(JSON.stringify(error));
        });
    },
    
   	update: function(event) {
        event.preventDefault();
        let data = {
			id: $("#id").val(),
			username: $("#username").val(),
            password: $("#password").val(),
            nickname: $("#nickname").val()
        };
        $.ajax({
            type: "PUT",
            url: "/member",
            data: JSON.stringify(data),
            contentType: "application/json; charset=utf-8",
            dataType: "json"
        }).done(function(resp) {
            alert("회원정보 수정이 완료되었습니다.");
            location.href = "/";
        }).fail(function(error) {
            alert(JSON.stringify(error));
        });
    },
    
    	deleteById: function(){
		 let id=$("#id").val();
            let username=$("#username").val();
            let password=$("#password").val();
            if (username == "" || password == "") {
                alert("빈 칸을 모두 채워주세요.");
                return false;
            }
            if (!confirm("정말 삭제하시겠습니까?")) {
                return false;
            }
		
		$.ajax({ 
			type:"DELETE",
			url:"/member/delete/" + id,
			dataType:"json",
			data: JSON.stringify({
				username: username,
				password: password
			}),
			contentType: "application/json; charset=utf-8"
		}).done(function(resp){
			alert("삭제가 완료되었습니다.");
			location.href="/";
		}).fail(function(error){
			alert(JSON.stringify(error));
		});
	},
		
    /**
    login: function(event) {
        event.preventDefault();
        let data = {
            email: $("#email").val(),
            password: $("#password").val()
        };
        
        $.ajax({
            type: "POST",
            url: "/api/member/login",
            data: JSON.stringify(data),
            contentType: "application/json; charset=utf-8",
            dataType: "json"
        }).done(function(resp) {
            alert("로그인이 완료되었습니다.");
            location.href = "/index";
        }).fail(function(error) {
            alert(JSON.stringify(error));
        });
    }
     */
};
index.init();