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
	
	@Transactional(readOnly = true)
	public Pet info(int id) {
		return petRepository.findById(id).orElseThrow(() -> {
			return new IllegalArgumentException("글 상세보기 실패: 아이디를 찾을 수 없습니다.");
		});
	}
	
//	@Transactional
//	public void update(int id, Pet requestPet) {
//		Pet pet = petRepository.findById(id).orElseThrow(() -> {
//			return new IllegalArgumentException("글 찾기 실패: 아이디를 찾을 수 없습니다.");
//		}); // 영속화 완료
//		pet.setName(requestPet.getName());
//		// 해당 함수로 종료(Service 종료)시 트랜젝션이 종료된다.
//		// 영속화 되어있는 board의 데이터가 달라졌기 때문에 
//		// 이때 더티체킹이 일어나면서 - 자동 업데이트가 된다.(commit = db flush)
//	}
}
