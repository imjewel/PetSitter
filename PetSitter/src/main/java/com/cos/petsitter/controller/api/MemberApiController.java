package com.cos.petsitter.controller.api;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.cos.petsitter.dto.ResponseDto;
import com.cos.petsitter.model.Member;
import com.cos.petsitter.service.MemberService;

@RestController
public class MemberApiController {

	@Autowired
	private MemberService memberService;
	
//	@Autowired
//	private AuthenticationManager AuthenticationManager;
	
    @PostMapping("/auth/joinProc")
    public ResponseDto<Integer> save(@RequestBody Member member) {
        System.out.println("MemberApiController 호출됨");

        //member.setRoles(RoleType.USER);
        
        memberService.create(member);
        return new ResponseDto<Integer>(HttpStatus.OK.value(), 1);
    }
}

/**
 * 전통 로그인 방식
@PostMapping("/api/member/login")
public ResponseDto<Integer>login(@RequestBody Member member, HttpSession session){
	System.out.println("MemberApiContorller:login 호출됨");
	Member principal = memberService.login(member);
	
	if(principal != null) {
		session.setAttribute("principal", principal);
	}
	return new ResponseDto<Integer>(HttpStatus.OK.value(), 1);
	}
*/