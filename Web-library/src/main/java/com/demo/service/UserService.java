package com.demo.service;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

import org.springframework.security.core.userdetails.UserDetails;

import com.demo.beans.UserListContainer;
import com.demo.entity.Book;
import com.demo.entity.User;

public interface UserService {
	
	public List<User> findAll();
	
	public User findById(int theId);
	
	public void save(User user);
	
	public void deleteById(int theId);
	
	public void update(User user);
	
	public List<Book> getUserBooks(User user);
	
	public List<Book> getUserBooks(String user);
	
	public Set<User> search(String query);

	public Boolean addUser(User user);
	
	public User updateStatus(User user);
	
	
	

}
