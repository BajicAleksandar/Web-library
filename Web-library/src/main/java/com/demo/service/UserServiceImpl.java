package com.demo.service;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.persistence.EntityNotFoundException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Service;

import com.demo.beans.UserListContainer;
import com.demo.entity.Book;
import com.demo.entity.User;
import com.demo.repository.AuthoritiesRepository;
import com.demo.repository.UserRepository;

import javassist.NotFoundException;

@Service
public class UserServiceImpl implements UserService {
	
	

	@Autowired
	private AuthoritiesRepository roleRepository;
	
	@Autowired
	private UserRepository userRepository;
	
	@Autowired
	public UserServiceImpl(UserRepository theUserRepository) {
		userRepository = theUserRepository;
	}

	@Override
	public List<User> findAll() {
		// TODO Auto-generated method stub
		return userRepository.findAll();
	}

	@Override
	public User findById(int theId) {
		
		return userRepository.findById(theId).orElseThrow(() -> new EntityNotFoundException());
	}

	@Override
	public void save(User user) {
	
		
		 userRepository.save(user);
		
	}

	@Override
	public void deleteById(int theId) {
		
		userRepository.deleteById(theId);
	}

	@Override
	public void update(User user) {
		
		userRepository.save(user);
		
	}

	@Override
	public List<Book> getUserBooks(User user) {
		
		return userRepository.findByUsername(user.getUsername()).getBooks();
	}

	@Override
	public List<Book> getUserBooks(String user) {
		User temp = userRepository.findByUsername(user);
		if(temp != null) {
			return temp.getBooks();
		}
		return new ArrayList();
	}

	@Override
	public Set<User> search(String query) {
	
		return userRepository.search(query);
	}

	@Override
	public Boolean addUser(User user) {
		Object newUser = userRepository.save(user);
		return (newUser !=null);
	}

	@Override
	public User updateStatus(User user) {
		User newUser = userRepository.getOne(user.getId());
	
	    newUser.setStatus(user.getStatus());
	    return userRepository.save(newUser);
	}

	
}
