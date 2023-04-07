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
	public PetService petService;
	
	//글 수정하기
//	@GetMapping("/pet/{id}/petUpdate")
//	public String updateForm(@PathVariable int id, Model model) {
//		model.addAttribute("board",petService.글상세보기(id));
//		return "board/updateForm";
//	}
	
	//글 상세보기
	@GetMapping("/petProfile/{id}")
	public String findById(@PathVariable int id, Model model) {
		model.addAttribute("pet",petService.petInfo(id));
		return "member/petProfile";
	}
	
	//USER권한이 필요
	@GetMapping("/petCreate") 
	public String saveForm() { 
		return "member/petCreate";
	}

	
}
