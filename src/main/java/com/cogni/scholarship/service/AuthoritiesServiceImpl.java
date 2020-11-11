package com.cogni.scholarship.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cogni.scholarship.dao.AuthoritiesDAO;
import com.cogni.scholarship.entity.Authorities;

@Service
public class AuthoritiesServiceImpl implements AuthoritiesService {

	// need to inject authorities dao
	@Autowired
	private AuthoritiesDAO authoritiesDAO;
	
	@Override
	@Transactional
	public List<Authorities> getAuthorities() {
		//call method to get the list of authorities 
		return authoritiesDAO.getAuthorities();
	}

	
	@Override
	@Transactional
	public void saveAuthorities(Authorities theAuthorities) {
		// call method to save authorities 
		authoritiesDAO.saveAuthorities(theAuthorities);

	}

	@Override
	@Transactional
	public Authorities getAuthorities(String theId) {
		// call method to get authority
		return authoritiesDAO.getAuthorities(theId);
	}

	

}
