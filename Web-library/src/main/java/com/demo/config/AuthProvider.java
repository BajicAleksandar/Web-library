package com.demo.config;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import javax.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.stereotype.Component;
import com.demo.entity.User;
import com.demo.service.AuthoritiesService;

@Component
public class AuthProvider implements AuthenticationProvider {
	
	private static List<User> users = new ArrayList();
	
	@Autowired
    private AuthoritiesService authService;
	
	@Transactional
	@Override
	public Authentication authenticate(Authentication auth) throws AuthenticationException {
		String username = auth.getName();
		String password = auth.getCredentials().toString();
		UsernamePasswordAuthenticationToken token = (UsernamePasswordAuthenticationToken) auth;
		User user = authService.findByUsername(token.getName());
		
		if(!user.getPassword().equalsIgnoreCase(token.getCredentials().toString())) {
			throw new BadCredentialsException("The credentials is invalid");
		}
		
		return new UsernamePasswordAuthenticationToken(user, user.getPassword(), (Collection<? extends GrantedAuthority>) user.getAuthorities());
		
		
	}

	@Override
	public boolean supports(Class<?> authentication) {
		// TODO Auto-generated method stub
		return authentication.equals(UsernamePasswordAuthenticationToken.class.equals(authentication));
	}
	
	

} 
