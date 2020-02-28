package com.demo.service;

import java.util.List;

import com.demo.entity.Authorities;
import com.demo.entity.User;

public interface AuthoritiesService {
	
	public User findByUsername(String username);
	
	public List<Authorities> getRoles();

}
