package com.demo.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.demo.beans.BookListContainer;
import com.demo.entity.Book;
import com.demo.service.BookService;

@Controller
public class BookController {
	
	@Autowired
	private BookService bookService;
	
	
	
	@RequestMapping(value = "/books", method = RequestMethod.GET)
	public String get(Model model) {
    	List<Book> books = bookService.getAllBooks();
    	BookListContainer bookForm = new BookListContainer();
		bookForm.setBooks(books);
		
		
		model.addAttribute("Books", bookForm);
        return "books";
		
	}
	
	@RequestMapping(value="/deleteBook/{id}",method = RequestMethod.GET)  
    public ModelAndView deleteBook(@PathVariable int id){  
    	bookService.deleteById(id); 
        return new ModelAndView("redirect:/books");  
    }  
	
	@RequestMapping(value="/addBook",method=RequestMethod.POST)
	public String addBook(@RequestParam("title") String title, @RequestParam("description") String description,
			@RequestParam("author") String author) {
		
		Book book = new Book(title, description, author);
		book.setTitle(title);
		book.setDescription(description);
		book.setAuthor(author);
		
		bookService.updateBook(book);
		
		return "redirect:/books";
		
	}
	
	
}
