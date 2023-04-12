package com.cos.petsitter.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
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
	
	@Transactional
	public void update (Member member) {
		Member persistance = memberRepository.findById(member.getId()).orElseThrow(()->{
			return new IllegalArgumentException("회원 찾기 실패");
		});
		String rawPassword = member.getPassword();
	    if (rawPassword != null && !rawPassword.isEmpty()) { // 입력한 패스워드가 존재할 경우에만 암호화하여 저장
	        String encPassword = encoder.encode(rawPassword);
	        persistance.setPassword(encPassword);
	    }
		persistance.setNickname(member.getNickname());
	}
	
	@Transactional
	public void delete(Member member) {
	    Member delete = memberRepository.findById(member.getId())
	            .orElseThrow(() -> new IllegalArgumentException("해당 회원이 존재하지 않습니다."));

	    if (encoder.matches(member.getPassword(), delete.getPassword())) {
	        memberRepository.deleteById(member.getId());
	    } else {
	        throw new IllegalArgumentException("패스워드가 일치하지 않습니다.");
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
