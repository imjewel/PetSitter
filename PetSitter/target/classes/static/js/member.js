let index = {
    init: function() {
        $("#btn-save").on("click", (event) => {
            this.save(event);
        });
        $("#btn-update").on("click", (event) => {
            this.update(event);
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
			username: $("#username").val(),
            password: $("#password").val(),
            nickname: $("#nickname").val(),
            birth: $("#birth").val(),
            address: $("#address").val(),
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
            location.href = "/";				
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
            //application/json 뒤에는 ; 붙이면 안되고 charset=utf-8 쓰면 안됨
            dataType: "json"
        }).done(function(resp) {
            alert("회원정보 수정이 완료되었습니다.");
            location.href = "/";
        }).fail(function(error) {
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