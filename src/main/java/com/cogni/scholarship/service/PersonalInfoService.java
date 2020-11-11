package com.cogni.scholarship.service;

import java.util.List;

import com.cogni.scholarship.entity.PersonalInfo;

public interface PersonalInfoService {

	public List<PersonalInfo> getInfo();

	public void saveInfo(PersonalInfo Info);

	public PersonalInfo getInfo(String theId);

	

}
