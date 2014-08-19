package com.jakim.tracking.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.jakim.tracking.entities.Person;
import com.jakim.tracking.services.PersonService;

@Controller
@RequestMapping("/")
public class HomeController {

	@Autowired
	private PersonService personSvc;

	/**
	 * Requests to http://localhost:8080/tracking will be mapped here. Every time
	 * invoked, we pass list of all persons to view
	 */
	@RequestMapping(value = "/users", method = RequestMethod.GET)
	public String listAll(Model model) {
		model.addAttribute("persons", personSvc.getAll());
		return "users";
	}

	/**
	 * POST requests to http://localhost:8080/hello/addPerson goes here. The new
	 * person data is passed from HTML from and bound into the Person object.
	 */
	@RequestMapping(value = "/addPerson", method = RequestMethod.POST)
	public String addPerson(@ModelAttribute Person person) {
		System.out.println("Enter in addPerson");
		personSvc.add(person);
		System.out.println("Leaving addPerson");
		return "redirect:/";
	}
	
	@RequestMapping("/")
	public String getHomePage(){
		return "index";
	}
}