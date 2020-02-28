package com.demo.service;

import java.util.List;

import com.demo.entity.MembershipCard;

public interface MembershipCardService {
	
public List<MembershipCard> findAll();
	
	public MembershipCard findById(int theId);
	
	public void save(MembershipCard card);
	
	public void deleteById(int theId);
	
	public void update(MembershipCard card);

}
