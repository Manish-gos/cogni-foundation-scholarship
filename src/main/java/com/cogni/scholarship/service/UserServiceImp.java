package com.cogni.scholarship.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cogni.scholarship.dao.UserDAO;
import com.cogni.scholarship.entity.Users;

@Service
public class UserServiceImp implements UserService{

	//need to inject user dao
	@Autowired
	private UserDAO userDao;

	@Override
	@Transactional
	public List<Users> getUser() {
		// call method to get the list of user object
		return userDao.getUser();
	}

	@Override
	@Transactional
	public void saveUser(Users theUser) {
		// call method to save the user
		userDao.saveUser(theUser);
	}

	@Override
	@Transactional
	public Users getUser(String theId) {
		// call method to get user
		return userDao.getUser(theId);
	}

	
}
