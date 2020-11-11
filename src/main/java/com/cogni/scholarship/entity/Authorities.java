package com.cogni.scholarship.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@Entity
@Table(name="authorities")
public class Authorities implements Serializable {
	
	// Defining entity for Authorities 
	@Id
	@Column(name="username")
	private String username;
	
	@Id
	@Column(name="authority")
	private String authority;

	//-------------------------------------------------------------------------------------
	//Getters and setter
	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getAuthority() {
		return authority;
	}

	public void setAuthority(String authority) {
		this.authority = authority;
	}

	//-------------------------------------------------------------------------------------
	//constructor for Authorities class
	public Authorities(String username, String authority) {
		super();
		this.username = username;
		this.authority = authority;
	}
	
	
}
