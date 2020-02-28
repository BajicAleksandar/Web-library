package com.demo.service;

import java.util.List;

import javax.persistence.EntityNotFoundException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.demo.entity.MembershipCard;
import com.demo.repository.MembershipCardRepository;

@Service
public class MembershipCardServiceImpl implements MembershipCardService {
	
	@Autowired
	private MembershipCardRepository cardRepository;

	@Override
	public List<MembershipCard> findAll() {
		// TODO Auto-generated method stub
		return cardRepository.findAll();
	}

	@Override
	public MembershipCard findById(int theId) {
		// TODO Auto-generated method stub
		return cardRepository.findById(theId).orElseThrow(() -> new EntityNotFoundException());
	}

	@Override
	public void save(MembershipCard card) {
		
		cardRepository.save(card);

	}

	@Override
	public void deleteById(int theId) {
		
		cardRepository.deleteById(theId);

	}

	@Override
	public void update(MembershipCard card) {
		
		cardRepository.save(card);

	}

}
