package com.cogni.scholarship.service;

import java.util.List;

import com.cogni.scholarship.entity.Users;

public interface UserService {

	public List<Users> getUser();

	public void saveUser(Users theUser);

	public Users getUser(String theId);

	
}
