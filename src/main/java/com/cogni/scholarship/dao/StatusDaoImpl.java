package com.cogni.scholarship.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.cogni.scholarship.entity.Status;
@Repository
public class StatusDaoImpl implements StatusDao {

	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public List<Status> getStatus() {
		// get the current hibernate session
				Session currentSession = sessionFactory.getCurrentSession();
						
				// create a query  ... sort by last name
				Query<Status> theQuery = 
						currentSession.createQuery("from Status order by status desc",
								Status.class);
				
				// execute query and get result list
				List<Status> status = theQuery.getResultList();
						
				// return the results		
				return status;
	}

	@Override
	public void saveStatus(Status Info) {
		// get current hibernate session
				Session currentSession = sessionFactory.getCurrentSession();
				
				// save/upate the customer ... finally LOL
				currentSession.saveOrUpdate(Info);
	}

	@Override
	public Status getStatus(String theId) {
		// get the current hibernate session
				Session currentSession = sessionFactory.getCurrentSession();
				
				// now retrieve/read from database using the primary key
				Status status = currentSession.get(Status.class, theId);
				
				return status;
	}

	
}
