package com.herokuapp.todoApplication.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.herokuapp.todoApplication.entity.User;
import com.herokuapp.todoApplication.exception.model.UserAlreadyExistsException;
import com.herokuapp.todoApplication.repository.UserRepository;

@Service
public class SignupService {

	@Autowired
	public UserRepository repository;

	public User signUp(User user) throws UserAlreadyExistsException {

		if (userExists(user)) {
			throw new UserAlreadyExistsException();
		}
		return repository.save(user);
	}

	public boolean userExists(User user) {

		return repository.findByEmail(user.getEmail()) != null;
	}
}
