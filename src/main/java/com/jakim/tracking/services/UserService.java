package com.jakim.tracking.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jakim.tracking.entities.User;
import com.jakim.tracking.repository.UserRepository;

@Service
public class UserService {
	
	@Autowired
	private UserRepository userRepository;

	public List<User> findAll() {
		
		return this.userRepository.findAll();
	}

	

}
