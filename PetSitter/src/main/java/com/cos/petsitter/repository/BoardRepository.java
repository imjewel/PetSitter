package com.cos.petsitter.repository;
 
import org.springframework.data.jpa.repository.JpaRepository;

import com.cos.petsitter.model.Boards;


public interface BoardRepository extends JpaRepository<Boards,Integer>{
	
}
