package com.cos.petsitter.repository;
 
import org.springframework.data.jpa.repository.JpaRepository;

import com.cos.petsitter.model.Board;


public interface BoardRepository extends JpaRepository<Board,Integer>{
	
}
