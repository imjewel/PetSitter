package com.cos.blog.model;

import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
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
	
		@Column(nullable = false, length = 30)
		private String username;
	
		@Column(nullable = false, length = 100) // 해쉬로 변경하여 암호화 length 크게
		private String password;
	
		@Column(nullable = false, length = 100)
		private String nickname;
	
		@Column(nullable = false)
		private String birth;
	
		@Column(nullable = false, length = 50)
		private String address;
	
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
