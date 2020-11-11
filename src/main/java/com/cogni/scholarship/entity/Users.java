package com.cogni.scholarship.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

@Entity
@Table(name="users")
public class Users {
	
	// Defining entities for user class
	
	@Id
	@Column(name="username")
	@NotNull
	@Size(min=4, message="length must be grater then 4")
	private String username;
	
	@NotNull
	@Size(min=1, message="is required")	
	@Column(name="firstName")
	private String firstName;
	
	@NotNull
	@Size(min=1, message="is required")	
	@Column(name="lastName")
	private String lastName;
	
	@NotEmpty(message="is required")
	@Pattern(regexp="(^$|[0-9]{10})", message="enter a valid number")	
	@Column(name="phone")
	private String phone;
	
	@NotEmpty(message="is required")	
	@Email( message="invalid email address")
	@Column(name="email")
	private String email;
	
	@NotEmpty(message="is required")	
	@Size(min=4, message="is required")	
	@Column(name="password")
	private String password;
	
	//---------------------------------------------------------------------------------
	// Getters and Setters methods for above entities
	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password ="{noop}"+ password;
	}

	public Users() {
		
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	//------------------------------------------------------------------------------------
	// constructor for user class
	public Users(String username, String firstName, String lastName, String phone, String email) {
		super();
		this.username = username;
		this.firstName = firstName;
		this.lastName = lastName;
		this.phone = phone;
		this.email = email;
	}

	
		
}





