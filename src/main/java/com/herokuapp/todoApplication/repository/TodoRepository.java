package com.herokuapp.todoApplication.repository;

import java.util.Date;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.herokuapp.todoApplication.entity.Todo;
import com.herokuapp.todoApplication.entity.User;

@Repository
public interface TodoRepository extends JpaRepository<Todo, Integer> {

	public List<Todo> findByUser(User user);

	public List<Todo> findByUserAndCompletedEquals(User user, Boolean completed);

	public List<Todo> findByUserAndDeadLineBefore(User user, Date date);

	public List<Todo> findByUserAndDeadLineBeforeAndCompletedEquals(User user, Date date, Boolean completed);

	public List<Todo> findByUserAndDeadLineAfter(User user, Date date);

	public List<Todo> findByUserAndDeadLineAfterAndCompletedEquals(User user, Date date, Boolean completed);

	public Todo findOneByIdAndCompletedEquals(Integer id, Boolean completed);

}
