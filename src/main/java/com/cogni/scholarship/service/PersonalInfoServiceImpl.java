package com.cogni.scholarship.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cogni.scholarship.dao.PersonalInfoDao;
import com.cogni.scholarship.entity.PersonalInfo;

@Service
public class PersonalInfoServiceImpl implements PersonalInfoService {

	// need to inject personalInfoDao
	@Autowired
	private PersonalInfoDao personalInfoDao;
	
	@Override
	@Transactional
	public List<PersonalInfo> getInfo() {
		// call method to list of personalInfo object
		return personalInfoDao.getInfo();
	}

	@Override
	@Transactional
	public void saveInfo(PersonalInfo Info) {
		//call method to save info
		personalInfoDao.saveInfo(Info);

	}

	@Override
	@Transactional
	public PersonalInfo getInfo(String theId) {
		// call method to get info
		return personalInfoDao.getInfo(theId);
	}

	
}
