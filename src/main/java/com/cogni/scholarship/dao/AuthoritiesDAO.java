package com.cogni.scholarship.dao;

import java.util.List;

import com.cogni.scholarship.entity.Authorities;

public interface AuthoritiesDAO {

	public List<Authorities> getAuthorities();

	public void saveAuthorities(Authorities theAuthorities);

	public Authorities getAuthorities(String theId);

	
}
