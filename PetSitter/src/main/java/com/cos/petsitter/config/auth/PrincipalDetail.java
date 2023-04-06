package com.cos.petsitter.config.auth;

import java.util.ArrayList;
import java.util.Collection;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import com.cos.petsitter.model.Member;

import lombok.Data;


//스프링 시큐리티가 로그인 요청을 가로채서 로그인을 진행하고 완료가 되면 UserDetails 타입의 오브젝트를
//스프링 시큐리티의 고유한 세션저장소에 저장을 해준다. 그 때 저장 되는것이 지금 만든 클래스인 PrincipalDetail

//UserDetails란 security에서 제공하는 메소드로 UserDetails 안에는 여러 추상메소드를 품고있음 그걸 사용할것임
@Data
public class PrincipalDetail implements UserDetails{
	private Member member; // 컴포지션

	public PrincipalDetail(Member member) {
		this.member = member;
	}

	//마우스 우클릭 눌러서 전체 오버라이딩 시키면 됨 (Source에서 Getter/Setter 추가하듯이 Ovrride)
	@Override
	public String getPassword() {
		return member.getPassword();
	}

	@Override
	public String getUsername() {
		return member.getUsername();
	}

	//계정이 만료되지 않았는지 리턴한다. (true: 만료안됨)
	@Override
	public boolean isAccountNonExpired() {
		return true;
	}

	//계정이 잠겼있지 않았는지 리턴한다. (true: 잠기지 않음)
	@Override
	public boolean isAccountNonLocked() {
		return true;
	}

	//비밀번호가 만료되지 않았는지 리턴한다. (true: 만료안됨)
	@Override
	public boolean isCredentialsNonExpired() {
		return true;
	}

	//계정이 활성화(사용가능)인지 리턴한다. (true: 활성화)
	@Override
	public boolean isEnabled() {
		return true;
	}

	//맨 위에 뜨는 Collection은 맨 아래로 내려줌
	//계정의 권한을 리턴한다. (권한이 여러개 있을 시 for문을 돌려서 루프를 해야함)
	@Override
	public Collection<? extends GrantedAuthority> getAuthorities() {
		
		Collection<GrantedAuthority> collectors = new ArrayList<>();
		//아래 Override를 간편하게 표현한 '람다식'
		collectors.add(()->{return "ROLE_"+member.getRoles();});
		
		return collectors;
		/**
		collectors.add(new GrantedAuthority() {
			@Override
			public String getAuthority() {
				//스프링에서 "ROLE_"+는 공식 규칙임 반드시 사용해야함
				return "ROLE_"+member.getRoles();
			}
		});
		*/
	}
}
