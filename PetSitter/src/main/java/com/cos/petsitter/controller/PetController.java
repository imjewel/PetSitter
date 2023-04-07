package com.cos.petsitter.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.cos.petsitter.service.PetService;

@Controller
public class PetController {
	
	@Autowired
	private PetService petService;

	@GetMapping("/petCreate")
	public String petCreate() {
		return "member/petCreate";
	}
	
	//글 상세보기
	@GetMapping("/petProfile/{id}")
	public String findById(@PathVariable int id, Model model) {
		model.addAttribute("pet",petService.info(id));
		return "board/detail";
	}

	
}
