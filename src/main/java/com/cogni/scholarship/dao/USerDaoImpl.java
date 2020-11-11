package com.cogni.scholarship.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.cogni.scholarship.entity.Users;
@Repository
public class USerDaoImpl implements UserDAO {

	// need to inject session factory
	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public List<Users> getUser() {
		// get the current hibernate session
				Session currentSession = sessionFactory.getCurrentSession();
						
				// create a query  ... 
				Query<Users> theQuery = 
						currentSession.createQuery("from users order by username",
													Users.class);
				
				// execute query and get result list
				List<Users> users = theQuery.getResultList();
						
				// return the results		
				return users;
	}

	@Override
	public void saveUser(Users theUser) {
		// get current hibernate session
				Session currentSession = sessionFactory.getCurrentSession();
				
				// save/upate the customer ...
				currentSession.saveOrUpdate(theUser);
		
	}

	@Override
	public Users getUser(String theId) {
		// get the current hibernate session
				Session currentSession = sessionFactory.getCurrentSession();
				
				// now retrieve/read from database using the primary key
				Users theCustomer = currentSession.get(Users.class, theId);
				
				return theCustomer;
	}

	
}
