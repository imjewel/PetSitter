package com.cos.petsitter.config.auth;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.cos.petsitter.model.Member;
import com.cos.petsitter.repository.MemberRepository;

@Service
public class PrincipalDetailService implements UserDetailsService{

	@Autowired
	private MemberRepository memberRepository;
	
	/**스프링이 로그인 요청을 가로챌 때, usename, password 변수 2개를 가로채는데
	 * password 부분 처리는 알아서 함
	 * username이 DB에 있는지만 확인해주면 됨
	 * 그 확인을 하는 변수명이 loadUserByUsername
	*/
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException{
		Member principal = memberRepository.findByUsername(username)
				.orElseThrow(()->{
					return new UsernameNotFoundException("해당 사용자를 찾을 수 없습니다.: "+username);
				});
		return new PrincipalDetail(principal); // 시큐리티의 세션에 유저 정보가 UserDetails로써 저장이 됨
		//반드시 오버라이딩을 해야만 유저 정보를 담을 수 있음
	}
}
