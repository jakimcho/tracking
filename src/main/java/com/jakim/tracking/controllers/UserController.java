package com.jakim.tracking.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.jakim.tracking.services.UserService;

@Controller
public class UserController {

	@Autowired
	private UserService userService;
}
