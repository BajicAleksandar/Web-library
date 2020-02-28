package com.demo.service;

import java.util.List;
import java.util.Optional;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.demo.entity.Book;
import com.demo.entity.User;
import com.demo.repository.BookRepository;

@Service
public class BookServiceImpl implements BookService {
	
	@Autowired
	private BookRepository bookRepository;
	
	public BookServiceImpl(BookRepository theBookRepository) {
		bookRepository = theBookRepository;
	}

	@Override
	public List<Book> getAllBooks() {
		// TODO Auto-generated method stub
		return bookRepository.findAll();
	}

	@Override
	public Book findById(int theId) {
		Optional<Book> book = bookRepository.findById(theId);
		if(book.isPresent()) {
			return book.get();
		}
		return new Book();
	}

	@Override
	public void deleteBook(Book book) {
		
		bookRepository.delete(book);
		
	}

	@Override
	public void updateBook(Book book) {
		
		bookRepository.save(book);
		
	}
	
	@Override
	public void deleteById(int theId) {
		
		bookRepository.deleteById(theId);
	}
	
	@Override
	public Boolean addBook(Book book) {
		Object newBook = bookRepository.save(book);
		return (newBook !=null);
	}
	
	@Override
	public Set<Book> search(String query) {
	
		return bookRepository.searchByTitle(query);
	}

	
}
