package com.demo.beans;

import java.util.ArrayList;
import java.util.Collection;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import com.demo.entity.User;

public class UserPrincipal implements UserDetails {
	
	private User user;
	
	public UserPrincipal(User user) {
		this.user = user;
	}

	@Override
	public Collection<? extends GrantedAuthority> getAuthorities() {
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

	@Override
	public String getPassword() {
		// TODO Auto-generated method stub
		return this.user.getPassword();
	}

	@Override
	public String getUsername() {
		// TODO Auto-generated method stub
		return this.user.getUsername();
	}

	@Override
	public boolean isAccountNonExpired() {
		// TODO Auto-generated method stub
		return true;
	}

	@Override
	public boolean isAccountNonLocked() {
		// TODO Auto-generated method stub
		return true;
	}

	@Override
	public boolean isCredentialsNonExpired() {
		// TODO Auto-generated method stub
		return true;
	}

	@Override
	public boolean isEnabled() {
		// TODO Auto-generated method stub
		return this.user.getStatus() == 1;
	}

}
