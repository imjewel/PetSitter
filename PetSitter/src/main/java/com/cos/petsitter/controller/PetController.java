package com.cos.petsitter.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class PetController {
	
	@GetMapping("/petProfile")
	public String petProfile() {
		return "member/petProfile";
	}
	
}
