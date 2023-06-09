let index = {
    init: function() {
        $("#btn-save").on("click", (event) => {
            this.save(event);
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
            alert("회원가입이 완료되었습니다.");
            location.href = "/auth/login";
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