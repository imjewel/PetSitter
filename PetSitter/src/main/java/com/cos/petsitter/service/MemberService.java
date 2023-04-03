package com.cos.petsitter.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cos.petsitter.model.Member;
import com.cos.petsitter.model.RoleType;
import com.cos.petsitter.repository.MemberRepository;

@Service
public class MemberService {

	@Autowired
	private MemberRepository memberRepository;
	
	@Autowired
	private BCryptPasswordEncoder encoder;
	
	@Transactional
	public int create (Member member) {
		String rawPassword = member.getPassword(); // 입력하는 패스워드
		String encPassword = encoder.encode(rawPassword); // 입력한 패스워드를 해쉬값으로 변경
		member.setPassword(encPassword);
		member.setRoles(RoleType.USER);
		try {
			memberRepository.save(member);
			return 1;
		} catch (Exception e) {
			return -1;
		}
	}
}

/**
 * 전통 로그인 방식
@Transactional(readOnly = true)
public Member login(Member member) {
	return memberRepository.findByEmailAndPassword(member.getEmail(), member.getPassword());
}
*/
