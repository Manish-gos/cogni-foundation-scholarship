package com.cogni.scholarship.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.cogni.scholarship.entity.Authorities;
@Repository
public class AuthoritiesDaoImpl implements AuthoritiesDAO {

	// need to inject session factory
	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public List<Authorities> getAuthorities() {
		
		// get the current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();
		
		// create a query  ... 
		Query<Authorities> theQuery = 
				currentSession.createQuery("from authorities",Authorities.class);
		
		// execute query and get result list
		List<Authorities> Authorities = theQuery.getResultList();
				
		// return the results		
		return Authorities;
	}

	@Override
	public void saveAuthorities(Authorities theAuthorities) {
		
		// get the current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();
		
		// save/upate the customer ... finally LOL
		currentSession.saveOrUpdate(theAuthorities);

	}

	@Override
	public Authorities getAuthorities(String theId) {
		
		// get the current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();
		
		// now retrieve/read from database using the primary key
		 Authorities theAuthoritie= currentSession.get(Authorities.class, theId);
		
		return theAuthoritie;
	}

	

}
