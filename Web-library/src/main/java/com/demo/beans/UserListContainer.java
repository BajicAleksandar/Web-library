package com.demo.beans;


import java.util.List;

import com.demo.entity.Authorities;
import com.demo.entity.MembershipCard;
import com.demo.entity.User;

public class UserListContainer {
	
	private List<User> users;
	private List<Authorities> authorities;
	private List<MembershipCard> membershipCard;

	public List<Authorities> getAuthorities() {
		return authorities;
	}

	public void setAuthorities(List<Authorities> authorities) {
		this.authorities = authorities;
	}

	public List<MembershipCard> getMembershipCard() {
		return membershipCard;
	}

	public void setMembershipCard(List<MembershipCard> membershipCard) {
		this.membershipCard = membershipCard;
	}

	public List<User> getUsers() {
		return users;
	}

	public void setUsers(List<User> users) {
		this.users = users;
	}
	
	

}
