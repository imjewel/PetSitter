package com.cos.petsitter.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Table(name="pet")
@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Entity
public class Pet {
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator="PET_SEQ_GENERATOR")
	private int id;
	
	@ManyToOne
	@JoinColumn(name = "memberId")
    private Member member;

	@Column(nullable = false, length = 50)
	private String name;
	
	@Column(nullable = false, length = 10)
	private String category;
	
	@Column(nullable = false, length = 10)
	private String gender;
	
	@Column(nullable = false, length = 10)
	private String pet_type;
	
	@Column(nullable = false, length = 10)
	private String age;
	
	@Column(nullable = false, length = 10)
	private String weight;
	
	@Column(nullable = false, length = 10)
	private String neutered;
	
	@Column(nullable = true, length = 20)
	private String hospital;
	
	@Column(nullable = true, length = 100)
	private String vaccin;
	
	@Column(nullable = true, length = 100)
	private String etc;

	@Column(nullable = true)
	private String img;
}
