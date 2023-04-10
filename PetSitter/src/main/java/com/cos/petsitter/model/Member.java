package com.cos.petsitter.model;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.hibernate.annotations.CreationTimestamp;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Table(name="member")
@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Entity
public class Member {
	@Id //primary key
	  @GeneratedValue(strategy=GenerationType.SEQUENCE, generator="MEMBER_SEQ_GENERATOR")
		//프로젝트에 연결된 DB의 넘버링 전략을 사용
		private int id;//시퀀스
	

		@OneToMany(mappedBy = "member", fetch = FetchType.LAZY)
		private List<Pet> pets = new ArrayList<>();
	
		/**
		//백기선 강사 JPA N+1 문제 양방향 매핑 방법
		public void add(Pet pet) {
			pet.setMember(this); // pet이 관계의 주인임을 정의해줌
			getPets().add(pet); // 양방향 관계의 매핑이기 때문에 두가지 전부에 매핑을 해준다는 의미임
		}
		*/
		
		@Column(nullable = false, length = 30)
		private String username;
	
		@Column(nullable = false, length = 100) // 해쉬로 변경하여 암호화 length 크게
		private String password;
	
		@Column(nullable = false, length = 100)
		private String nickname;
	
		@Column(nullable = false)
		private String birth;
	
		//주소 찾기 시작
		@Column(nullable = false, length = 50)
		private String postcode;
		@Column(nullable = false, length = 50)
		private String road;
		@Column(nullable = false, length = 50)
		private String jibun;
		@Column(nullable = false, length = 50)
		private String detail;
		@Column(nullable = false, length = 50)
		private String extra;
		//주소 찾기 끝
		
		@Column(nullable = false, length = 10)
		private String gender;
	
		@Column(nullable = false, length = 50)
		private String phone;
	
		@Column(nullable = true)
		private String img;
	
		@Enumerated(EnumType.STRING)
		private RoleType roles;
	
		@CreationTimestamp // time is automatically entered
		private Timestamp createDate;
}
