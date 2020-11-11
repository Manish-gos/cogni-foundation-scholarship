package com.cogni.scholarship.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.cogni.scholarship.entity.PersonalInfo;
import com.cogni.scholarship.entity.Status;
import com.cogni.scholarship.service.PersonalInfoService;
import com.cogni.scholarship.service.StatusService;

@Controller
@RequestMapping(value="/system")
public class AdminController {

	//need to inject personal serviceInfo and statusService
	@Autowired
	private PersonalInfoService personalInfoService; 
	

	@Autowired
	private StatusService statusService;

	
	@GetMapping(value="/studentApprov")
	public String ShowPersonalInfo(@RequestParam("userName") String id,Model themodel) {
		
		// get the personal info from data base
		PersonalInfo theInfo=personalInfoService.getInfo(id);
		
		//create statsu object and add to model
		Status status=new Status();
		themodel.addAttribute("status", status);
		themodel.addAttribute("pInfo", theInfo);
		return "studentApprov";
	}

	
	@PostMapping(value="/processApprov")
	public String ShowPersonalInfo( @ModelAttribute("status") Status status, 
			Model theModel) {
		
		// Save status
		statusService.saveStatus(status);
		
		return "redirect:/system";
	}
}
