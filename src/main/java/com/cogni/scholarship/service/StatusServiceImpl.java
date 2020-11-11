package com.cogni.scholarship.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cogni.scholarship.dao.StatusDao;
import com.cogni.scholarship.entity.Status;

@Service
public class StatusServiceImpl implements StatusService {

	//need to inject status dao
	@Autowired
	private StatusDao statusDao;
	
	@Override
	@Transactional
	public List<Status> getStatus() {
		// call method to get list of status object
		return statusDao.getStatus();
	}

	@Override
	@Transactional
	public void saveStatus(Status Info) {
		// call method to save status
		statusDao.saveStatus(Info);
	}

	@Override
	@Transactional
	public Status getStatus(String theId) {
		// call method to get status
		return statusDao.getStatus(theId);
	}

	

}
