package com.cos.petsitter.repository;
 
import org.springframework.data.jpa.repository.JpaRepository;

import com.cos.petsitter.model.Pet;


public interface PetRepository extends JpaRepository<Pet,Integer>{
	
}
