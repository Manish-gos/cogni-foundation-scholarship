package com.cogni.scholarship.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cogni.scholarship.entity.PersonalInfo;
import com.cogni.scholarship.entity.Status;
import com.cogni.scholarship.entity.Users;
import com.cogni.scholarship.service.PersonalInfoService;
import com.cogni.scholarship.service.StatusService;

@Controller
@RequestMapping("/student")
public class StudentController {

	// Need to inject our personalInfoService
	@Autowired
	private PersonalInfoService personalInfoService;

	// Need to inject our StatusService
	@Autowired
	private StatusService statusService;

	@GetMapping(value = "/personalInfo")
	public String ShowPersonalInfo(Model themodel) {

		// Create personalInfo object
		PersonalInfo pInfo = new PersonalInfo();

		// add personalInfo to model
		themodel.addAttribute("pInfo", pInfo);

		// Return to personalInfo.jsp page
		return "persnol-Info";
	}

	@PostMapping("/processInfoForm")
	public String processPersonalInfo(@Valid @ModelAttribute("pInfo") PersonalInfo theInfo,
			BindingResult theBindingResult, Model theModel) {

		// for validation check
		if (theBindingResult.hasErrors()) {
			theModel.addAttribute("registrationError", "All fields are required and must filled in given formate.");
			return "persnol-Info";
		} else {
			Authentication auth = SecurityContextHolder.getContext().getAuthentication();
			String userName = auth.getName();

			// set user name
			theInfo.setUserName(userName);
			System.out.println(userName);
			// save theInfo object in our database
			personalInfoService.saveInfo(theInfo);
			Status Info = new Status(theInfo.getUserName(), "panding");
			statusService.saveStatus(Info);
			theModel.addAttribute("pInfo", theInfo);

			// return to home.jsp page
			return "home";
		}
	}

	@GetMapping("/viewInfoForm")
	public String viewPersonalInfo(Authentication authentication, Model theModel) {

		// get the Persnal Information using primay key
		PersonalInfo theInfo = personalInfoService.getInfo(authentication.getName());

		// add PersonalInfo object to model
		theModel.addAttribute("pInfo", theInfo);

		return "viewInfo";
	}

	@GetMapping("/viewStatus")
	public String viewStatus(Authentication authentication, Model theModel) {

		// create Status object and get the status form database
		Status theInfo = statusService.getStatus(authentication.getName());

		// add status object to model
		theModel.addAttribute("pInfo", theInfo);
		return "viewStatus";
	}

}
