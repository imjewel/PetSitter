package com.cos.petsitter.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

//인증이 안된 사용자들이 출입할 수 있는 경로를 /auth/**로 허용
//그냥 주소가 / 이면 index.jsp 허용
// static 이하에 있는 /js/**, /css/**, /img/**

@Controller
public class MemberController {
	
	@GetMapping("/auth/login")
	public String login() {
		return "member/loginForm";
	}
	
	@GetMapping("/auth/signUp")
	public String signUp() {
		return "member/signUpForm";
	}
	
	@GetMapping("/update")
	public String update() {
		return "member/updateForm";
	}
	
	@GetMapping("/myPage")
	public String myPage() {
		return "member/myPage";
	}
	
	@GetMapping("/petProfile")
	public String petProfile() {
		return "member/petProfile";
	}
	
	
}
