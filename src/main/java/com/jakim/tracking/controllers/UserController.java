package com.jakim.tracking.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.jakim.tracking.entities.User;
import com.jakim.tracking.services.UserService;

@Controller
@RequestMapping("/users/")
public class UserController {

	@Autowired
	private UserService userService;
	
	@ModelAttribute("user")
	public User construct(){
		return new User();
	}
	
	@RequestMapping("/users")
	public String getAll(Model model){
		model.addAttribute("users", this.userService.findAll());
		
		return "users/users";
	}
	
	@RequestMapping("/{id}")
	public String detail(Model model, @PathVariable(value = "id") int userId){
		model.addAttribute("user", this.userService.findOneWithBlogs(userId));
		
		return "users/user-details";
	}
	
	@RequestMapping("/register")
	public String showRegister(Model model){
		return "users/user-register";
	}
	
	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String doRegister(@ModelAttribute("user")User user){
		this.userService.save(user);
		
		return "users/user-register";
	}
}
