package com.jakim.tracking.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jakim.tracking.repository.UserRepository;

@Service
public class UserService {
	
	@Autowired
	private UserRepository userRepository;

}
