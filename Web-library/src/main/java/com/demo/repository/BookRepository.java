package com.demo.repository;

import java.util.Set;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.demo.entity.Book;

public interface BookRepository extends JpaRepository<Book, Integer> {
	
	@Query(value="SELECT * FROM book WHERE book.title = :book", nativeQuery = true)
	public Set<Book> searchByTitle(String book);

}
