package com.cogni.scholarship.dao;

import java.util.List;

import com.cogni.scholarship.entity.Users;


public interface UserDAO {

	public List<Users> getUser();

	public void saveUser(Users theUser);

	public Users getUser(String theId);

	
	
}
