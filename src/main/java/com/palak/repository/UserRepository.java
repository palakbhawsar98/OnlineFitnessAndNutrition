package com.palak.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.palak.model.User;

public interface UserRepository extends JpaRepository<User, Integer> {

	public User findByUsernameAndPassword(String username, String password);

	
	
}
