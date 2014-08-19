package com.jakim.tracking.controllers;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.ui.Model;
import com.jakim.tracking.entities.Person;
import com.jakim.tracking.services.PersonService;

@Controller
@RequestMapping(value = "/persons/")
public class PersonController {

	@Autowired
	private PersonService personSvc;
	
	private static final Logger logger = LoggerFactory.getLogger(PersonController.class);
	
	/**
	 * Requests to http://localhost:8080/tracking/persons/list will be mapped here. Every time
	 * invoked, we pass list of all persons to view
	 */
	@RequestMapping(value = "/persons")
	public String getAllUsers(Model model){
		logger.info("Enter in getAllUsers method");
		model.addAttribute("persons", personSvc.getAll());
		logger.info("Leaving getAllUsers method");
		
		return "persons/persons";
	}
	
	/**
	 * POST requests to http://localhost:8080/tracking/persons/personForm goes here. The new
	 * invoked, we pass a form for adding person to view
	 */
	@RequestMapping(value = "/personForm", method = RequestMethod.GET)
	public String addUserForm(){
		logger.info("Enter in addUser method");
		logger.info("Leaving addUser method");
		
		return "persons/personForm";
	}
	
	/**
	 * POST requests to http://localhost:8080/tracking/persons/addPerson goes here. The new
	 * person data is passed from HTML from and bound into the Person object.
	 */
	@RequestMapping(value = "/addPerson", method = RequestMethod.POST)
	public String addPerson(@ModelAttribute Person person) {
		logger.info("Enter in addPerson method");
		personSvc.add(person);
		logger.info("Leaving addPerson method");
		
		return "redirect:/persons/persons";
	}
}
