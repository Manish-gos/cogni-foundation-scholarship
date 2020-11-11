package com.cogni.scholarship.service;

import java.util.List;

import com.cogni.scholarship.entity.Authorities;

public interface AuthoritiesService {

	public List<Authorities> getAuthorities();

	public void saveAuthorities(Authorities theAuthorities);

	public Authorities getAuthorities(String theId);

	
}
