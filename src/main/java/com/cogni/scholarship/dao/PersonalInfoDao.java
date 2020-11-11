package com.cogni.scholarship.dao;

import java.util.List;

import com.cogni.scholarship.entity.PersonalInfo;

public interface PersonalInfoDao {

	public List<PersonalInfo> getInfo();

	public void saveInfo(PersonalInfo Info);

	public PersonalInfo getInfo(String theId);


	
	
}
