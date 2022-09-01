package com.herokuapp.todoApplication.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.herokuapp.todoApplication.entity.User;

@Repository
public interface UserRepository extends JpaRepository<User, Integer> {

	User findByEmailAndPassword(String email, String password);

	User findByEmail(String email);

}
