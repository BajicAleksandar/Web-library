package com.demo.beans;

import java.util.List;

import com.demo.entity.Book;
import com.demo.entity.User;

public class BookListContainer {
	
	private List<User> users;
	private List<Book> books;
	
	
	public List<User> getUsers() {
		return users;
	}
	public void setUsers(List<User> users) {
		this.users = users;
	}
	public List<Book> getBooks() {
		return books;
	}
	public void setBooks(List<Book> books) {
		this.books = books;
	}
	
	

}
