package com.demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.demo.entity.Authorities;
import com.demo.entity.User;
import com.demo.repository.AuthoritiesRepository;
import com.demo.repository.UserRepository;

@Service("authService")
public class AuthoritiesServiceImpl implements AuthoritiesService {
	
	@Autowired
	private UserRepository userRepository;
	
	@Autowired
	private AuthoritiesRepository roleRepository;

	@Override
	public User findByUsername(String username) {
		// TODO Auto-generated method stub
		return userRepository.findByUsername(username);
	}

	@Override
	public List<Authorities> getRoles() {
		// TODO Auto-generated method stub
		return roleRepository.findAll();
	}

}
