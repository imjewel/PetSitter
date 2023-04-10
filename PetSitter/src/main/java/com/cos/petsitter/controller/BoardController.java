package com.cos.petsitter.controller;

//import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.model;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.cos.petsitter.service.BoardService;

@Controller
public class BoardController {

	@Autowired
	public BoardService boardService;
	
	//메인페이지 글목록
	@GetMapping({"", "/", "/index"})
	public String index(Model model,@PageableDefault(size = 5, sort = "id", 
	direction = Sort.Direction.DESC) Pageable pageable) { 
		model.addAttribute("board",boardService.글목록(pageable));
		return "index";
	}
	//글 목록
	@GetMapping({"/auth/board/list"})
	public String list(Model model,@PageableDefault(size = 5, sort = "id", 
	direction = Sort.Direction.DESC) Pageable pageable) { 
		model.addAttribute("board",boardService.글목록(pageable));
		return "board/list";
	}
	
	//글 수정하기
	@GetMapping("/board/{id}/updateForm")
	public String updateForm(@PathVariable int id, Model model) {
		model.addAttribute("board",boardService.글상세보기(id));
		return "board/updateForm";
	}
	
	//글 상세보기
	@GetMapping("/auth/board/{id}")
	public String findById(@PathVariable int id, Model model) {
		model.addAttribute("board",boardService.글상세보기(id));
		return "board/detail";
	}
	
	//USER권한이 필요
	@GetMapping({"/board/saveForm"}) 
	public String saveForm() { 
		return "board/saveForm";
	}
	
	//notice
		@GetMapping({"/auth/notice"}) 
		public String notice() { 
			return "/notice_board";
		}
	//shopping
		@GetMapping({"/auth/shopping"}) 
		public String shopping() { 
			return "shopping/shopping";
		}
	//shopping
		@GetMapping({"/matching"}) 
		public String matching() { 
			return "matching/matching";
		}
}
