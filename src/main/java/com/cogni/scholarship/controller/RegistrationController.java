package com.cogni.scholarship.controller;

import java.util.logging.Logger;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cogni.scholarship.entity.Authorities;
import com.cogni.scholarship.entity.Users;
import com.cogni.scholarship.service.AuthoritiesService;
import com.cogni.scholarship.service.UserService;


@Controller
@RequestMapping("/register")
public class RegistrationController {
	
	
	//need to inject authoritiesService, UserService and logger
	@Autowired
	private AuthoritiesService authoritiesService;
	private Logger logger = Logger.getLogger(getClass().getName());
	
	@Autowired
	private UserService userService;
	
	
	@GetMapping("/showRegistrationForm")
	public String showMyLoginPage(Model theModel) 
   {
		
		// create user object and add to model
		 Users user=new Users();
		theModel.addAttribute("crmUser", user);
		return "registration-form";
		
	}

	@PostMapping("/processRegistrationForm")
	public String processRegistrationForm(
			@Valid @ModelAttribute("crmUser") Users theUser, 
				BindingResult theBindingResult, 
				Model theModel) {
						
		String userName = theUser.getUsername();
		
		logger.info("Processing registration form for: " + userName);
		
		// form validation
		if (theBindingResult.hasErrors()) {

			//theModel.addAttribute("crmUser", new Users());
			theModel.addAttribute("registrationError", "All fields are required and must filled in given formate.");

			logger.warning("All fields are required and must filled in given formate.");
			
			return "registration-form";
		}
		
		// check the database if user already exists
	          boolean userExists = doesUserExist(userName);
		
	          if (userExists) {
			theModel.addAttribute("crmUser", new Users());
			theModel.addAttribute("registrationError", "Users name already exists.");

			logger.warning("Users name already exists.");
			
			return "registration-form";			
		}
		
		//
		// whew ... we passed all of the validation checks!
		// let's get down to business!!!
		//
		Authorities theAuthorities=new Authorities(theUser.getUsername(), "ROLE_USER");
		String message = null;
		try {
			 userService.saveUser(theUser);
			 authoritiesService.saveAuthorities(theAuthorities);
			message = "Customer Register with id " + theUser.getUsername();
		} catch (Exception e) {
			message = "Customer not saved due to " + e.getMessage();
		}
		theModel.addAttribute("message", message);
		theModel.addAttribute("customer", new Users());
		
        logger.info("Successfully created user: " + userName);
        
        return "Registration-confirmation";	
		
	}
	
	private boolean doesUserExist(String userName) {
		
		logger.info("Checking if user exists: " + userName);
		
		// check the database if the user already exists
		boolean exists = false;
		
		if(userService.getUser(userName)!=null)
			exists= true;
		
		logger.info("Users: " + userName + ", exists: " + exists);
		
		return exists;
	}
  
	
	
}
