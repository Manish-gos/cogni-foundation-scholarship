package com.cogni.scholarship.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.cogni.scholarship.entity.PersonalInfo;
@Repository
public class PersonalInfoDaoImpl implements PersonalInfoDao {

	// need to inject session factory
	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public List<PersonalInfo> getInfo() {
		// get the current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();
				
		// create a query  ... 
		Query<PersonalInfo> theQuery = 
				currentSession.createQuery("from PersonalInfo",
						PersonalInfo.class);
		
		// execute query and get result list
		List<PersonalInfo> info = theQuery.list();
				
		// return the results		
		return info;
	}

	@Override
	public void saveInfo(PersonalInfo Info) {
		// get current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();
		
		// save/upate the customer ... 
		currentSession.saveOrUpdate(Info);
		
	}

	@Override
	public PersonalInfo getInfo(String theId) {
		// get the current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();
		
		// now retrieve/read from database using the primary key
		PersonalInfo theInfo = currentSession.get(PersonalInfo.class, theId);
		
		return theInfo;
	}

	
	}


