package com.cos.petsitter.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cos.petsitter.model.Member;
import com.cos.petsitter.model.Pet;
import com.cos.petsitter.repository.PetRepository;

@Service
public class PetService {
	
	@Autowired
	private PetRepository petRepository;
	
	@Transactional
	public void create(Pet pet, Member member) {
		pet.setMember(member);
	   petRepository.save(pet);
	}
	
//	@Transactional
//	public void update(Pet updatePet, Member member) {
//	    Pet pet = petRepository.findById(updatedPet.getId()).orElseThrow(() -> {
//	        return new IllegalArgumentException("펫 찾기 실패: 아이디를 찾을 수 없습니다.");
//	    });
//	    pet.setName(updatedPet.getName());
//	    pet.setCategory(updatedPet.getCategory());
//	}

}
