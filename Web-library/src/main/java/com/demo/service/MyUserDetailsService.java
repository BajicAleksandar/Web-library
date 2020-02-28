package com.demo.service;

import java.util.ArrayList;
import java.util.Collection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.demo.beans.UserPrincipal;
import com.demo.entity.User;
import com.demo.repository.UserRepository;

@Service
public class MyUserDetailsService implements UserDetailsService {
	
	@Autowired
	private UserRepository userRepository;


	@Override
	public UserDetails loadUserByUsername(String s) throws UsernameNotFoundException {
		User user = userRepository.findByUsername(s);
		UserPrincipal userPrincipal = new UserPrincipal(user);
		return userPrincipal;
	}

	
	private Collection<GrantedAuthority> getGrantedAuthorities(User user) {
		Collection<GrantedAuthority> grantedAuthorities = new ArrayList<>();
		if(user.getAuthorities().getRole().equals("ADMIN")) {
			grantedAuthorities.add(new SimpleGrantedAuthority("ROLE_ADMIN"));
		}
		if(user.getAuthorities().getRole().equals("STUDENT")) {
		grantedAuthorities.add(new SimpleGrantedAuthority("ROLE_STUDENT"));
		}
		if(user.getAuthorities().getRole().equals("TEACHER")) {
		grantedAuthorities.add(new SimpleGrantedAuthority("ROLE_TEACHER"));
		}
		return grantedAuthorities;
	}
	
	

	
}
