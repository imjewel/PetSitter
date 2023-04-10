package com.cos.petsitter.controller;

import java.security.Principal;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.cos.petsitter.model.Member;
import com.cos.petsitter.model.Pet;
import com.cos.petsitter.repository.MemberRepository;
import com.cos.petsitter.repository.PetRepository;
import com.cos.petsitter.service.PetService;

@Controller
public class PetController {
	
	@Autowired
	public PetService petService;
	
	@Autowired
	public MemberRepository memberRepository;
	
	@Autowired
	public PetRepository petRepository;
	
	//글 수정하기
//	@GetMapping("/pet/{id}/petUpdate")
//	public String updateForm(@PathVariable int id, Model model) {
//		model.addAttribute("board",petService.글상세보기(id));
//		return "board/updateForm";
//	}
	
	@GetMapping("/petProfile")
	public String petProfile(Model model, Principal principal) {
	    // 로그인한 사용자 정보를 가져옵니다.
	    String username = principal.getName();
	    Optional<Member> memberOpt = memberRepository.findByUsername(username);

	    if (memberOpt.isPresent()) {
	        Member member = memberOpt.get();
	        List<Pet> pets = member.getPets();

	        if (!pets.isEmpty()) {
	            Pet pet = pets.get(0);
	            model.addAttribute("pet", pet);
	            return "member/petProfile";
	        }
	    }
	    // Member 데이터가 없거나 Pet 데이터가 없으면 새로운 Pet 프로필 생성 페이지로 이동합니다.
	    return "member/petCreate";
	}
}
