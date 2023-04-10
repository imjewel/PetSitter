package com.cos.petsitter.controller.api;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.cos.petsitter.config.auth.PrincipalDetail;
import com.cos.petsitter.dto.ResponseDto;
import com.cos.petsitter.model.Member;
import com.cos.petsitter.model.Pet;
import com.cos.petsitter.service.PetService;

@RestController
public class petApiController {
	
	@Autowired
	private PetService petService;
	
	@PostMapping("/api/pet")
	public ResponseDto<Integer> save(@RequestBody Pet pet, @AuthenticationPrincipal PrincipalDetail principal ) {
		petService.create(pet,principal.getMember());
		return new ResponseDto<Integer>(HttpStatus.OK.value(),1);
	}
	
	@PutMapping("/api/petUpdate")
	public ResponseDto<Integer> update(@PathVariable Pet pet,@AuthenticationPrincipal PrincipalDetail principal){
		petService.update(pet, principal.getMember());
		return new ResponseDto<Integer>(HttpStatus.OK.value(),1);
	}
	
}
