package com.jakim.tracking.controllers;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AboutController {
	private static final Logger logger = LoggerFactory.getLogger(AboutController.class);
	
	@RequestMapping(value = "/about", method = RequestMethod.GET)
	public String about(){
		logger.info("Enter in About page!");
		
		return "about";
	}

}
