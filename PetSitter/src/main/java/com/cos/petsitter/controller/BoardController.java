package com.cos.petsitter.controller;

import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.cos.petsitter.config.auth.PrincipalDetail;

@Controller
public class BoardController {

	@GetMapping({"","/index"})
	public String index(@AuthenticationPrincipal PrincipalDetail principal) {
		System.out.println("로그인 사용자 아이디: "+principal.getUsername() );
		return "index";
	}
}
