package com.herokuapp.todoApplication.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.herokuapp.todoApplication.entity.UserDetailsImpl;

@Repository
public interface UserDetailsRepository extends JpaRepository<UserDetailsImpl, Integer> {
	
	
}
