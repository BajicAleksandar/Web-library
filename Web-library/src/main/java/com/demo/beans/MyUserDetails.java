package com.demo.beans;

import java.util.Collection;

import org.springframework.security.core.GrantedAuthority;

import com.demo.entity.User;

public class MyUserDetails extends User {
	
	private int status;

	public MyUserDetails(String username, String password, int status) {
		super(username, password, status);
		
		this.status = status;
	}

	public int getStatus() {
		return status;
	}
	
	

}
