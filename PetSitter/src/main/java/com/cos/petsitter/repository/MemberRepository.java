package com.cos.petsitter.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.cos.petsitter.model.Member;

//JSP의 DAO
//자동으로 bean등록이 된다.
//@Repository 생략 가능
public interface MemberRepository extends JpaRepository<Member,Integer>{
	Optional<Member> findByUsername(String username);
	
	@Query("select distinct m from Member m join fetch m.pet")
    List<Member> findAllJoinFetch();
}


//전통 로그인을 위한 함수
//JPA Naming전략
//select  *from user where username=1?;
//Member findByEmailAndPassword(String email, String password);

//위랑 같음
//@Query(value="select * from users where username=?1 
//AND password=?2",nativeQuery=true)
//User login(String username, String password);