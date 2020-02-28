package com.demo.service;

import java.util.List;
import java.util.Set;

import com.demo.entity.Book;

public interface BookService {
	
	public List<Book> getAllBooks();
	
	public Book findById(int theId);
	
	public void deleteBook(Book book);
	
	public void updateBook(Book book);
	
	public void deleteById(int theId);
	
	public Boolean addBook(Book book);
	
	public Set<Book> search(String query);
	
	


}
