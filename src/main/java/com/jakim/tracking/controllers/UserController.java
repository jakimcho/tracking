package com.jakim.tracking.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jakim.tracking.services.UserService;

@Controller
@RequestMapping("/users/")
public class UserController {

	@Autowired
	private UserService userService;
	
	@RequestMapping("/users")
	public String getAll(Model model){
		model.addAttribute("users", this.userService.findAll());
		
		return "users/users";
		
	}

}
