package com.cogni.scholarship.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.cogni.scholarship.entity.Status;
import com.cogni.scholarship.service.StatusService;

@Controller
public class LoginController {
	// need to inject StatusService
	@Autowired
	private StatusService statsuService;
	
	// get mapping for home page
	@GetMapping("/")
	public String showHome(Model themodel) {
		// -------Just for check exception handling -------
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		String userName = auth.getName();
		//String userName =null;
		if(userName==null)
		{
			throw new RuntimeException("Dummy");
		}
		//------------------------------------------------
		return "home";
	}
	
	
	// get mapping for Admin
		@GetMapping("/system")
		public String showAdmin(Model theModel) {
			List<Status> Pinfo=statsuService.getStatus();
			theModel.addAttribute("Pinfo",Pinfo);
			return "system";
		}

		//Mapping for application main page
	@GetMapping("/cogniHome")
	public String showcogniHome() {
		
		return "cogniHome";
		
	}
	
	//mapping for login page
	@GetMapping("/showMyLoginPage")
	public String showMyLoginPage() {
		
		return "plain-login";
		
	}
	
	// Add mapping for access denied '/access-denied'
	@GetMapping("/access-denied")
	public String showAccessDenied() {
		
		return "access-denied";
		
	}
	
}