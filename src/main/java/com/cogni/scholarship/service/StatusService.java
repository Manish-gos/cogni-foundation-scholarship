package com.cogni.scholarship.service;

import java.util.List;

import com.cogni.scholarship.entity.Status;

public interface StatusService {

	public List<Status> getStatus();

	public void saveStatus(Status Info);

	public Status getStatus(String theId);

	
	
}
