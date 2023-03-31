package com.cos.blog.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;

import com.cos.blog.config.auth.PrincipalDetailService;

//빈 등록 : 스프링 컨테이너에서 객체를 관리할 수 있게 하는것
//아래의 어노테이션 세가지는 필수등록
@Configuration // 빈 등록 ioC 관리
@EnableWebSecurity // 시큐리티 필터 등록
@EnableGlobalMethodSecurity(prePostEnabled = true) // 특정 주소로 접근하면 권한 및 인증을 미리 체크
public class SecurityConfig {

	@Autowired
	private PrincipalDetailService principalDetailService;
	
	@Bean
	public BCryptPasswordEncoder encodePWD() {
		return new BCryptPasswordEncoder();
	}
	
	/**시큐리티가 대신 로그인 해줄 때 password를 가로채기 하는데
	 * 해당 password가 뭘로 해쉬가 되어 회원가입이 되었는지 알아야
	 * 같은 해쉬로 암호화해서 DB에 있는 해쉬값이랑 비교가 가능함
	 */
	protected void configure(AuthenticationManagerBuilder auth) throws Exception{
		auth.userDetailsService(principalDetailService).passwordEncoder(encodePWD());
	}
	
	@Bean
	public SecurityFilterChain filterChain(HttpSecurity http) throws Exception{
		http
			.csrf().disable() // csrf 토큰 비활성화 (테스트시 걸어두는 게 좋음)
			.authorizeRequests()
				.antMatchers("/auth/**", "/js/**", "/css/**", "/img/**", "/**") // 인증이 없어도 접근할 수 있는 주소
				.permitAll()
				.anyRequest() // /auth/** 가 아닌 다른 모든 요청은
				.authenticated() //인증을 받아야 접근 가능
			.and()
				.formLogin() // 인증이 필요한 주소를 입력하면
				.loginPage("/auth/login") //이 로그인 화면으로 인증을 요청하러 이동함
				.loginProcessingUrl("/auth/loginProc") //loginForm.jsp에 form action을 이 주소로 걸었음
				.defaultSuccessUrl("/"); // 스프링 시큐리티가 해당 주소로 요청오는 로그인을 가로챈다
		return http.build();
	}
}
