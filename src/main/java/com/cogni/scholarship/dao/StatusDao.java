package com.cogni.scholarship.dao;

import java.util.List;

import com.cogni.scholarship.entity.Status;

public interface StatusDao {

	public List<Status> getStatus();

	public void saveStatus(Status Info);

	public Status getStatus(String theId);


	
	
}
