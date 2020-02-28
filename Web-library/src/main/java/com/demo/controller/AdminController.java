package com.demo.controller;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.demo.beans.BookListContainer;
import com.demo.beans.UserListContainer;
import com.demo.entity.Book;
import com.demo.entity.User;
import com.demo.repository.UserRepository;
import com.demo.service.BookService;
import com.demo.service.UserService;

@Controller
public class AdminController {
	
	@Autowired
    private UserService userService;
	
	@Autowired
    private BookService bookService;
	
	
//	 @RequestMapping(value = "/showUsers", method = RequestMethod.GET)
//    public String showUsers(Model model) throws Exception{
//        List<User> users = getListOfUsers();
//        UserListContainer userList = new UserListContainer();
//        userList.setUsers(users);
//        model.addAttribute("Users", userList);
//        return "showUsers";
//    } 
	
	@GetMapping("/allUsers")
	public String allUsers(Model model) throws Exception{
        List<User> users = getListOfUsers();
        UserListContainer userList = new UserListContainer();
        userList.setUsers(users);
        model.addAttribute("Users", userList);
        return "allUsers";
    } 
	
	
	
	private List<User> getListOfUsers() {
        List<User> users = new ArrayList<User>();
     
        return users;
    }
	
	@RequestMapping
	public List<Book> getAllBooks(){
		return bookService.getAllBooks();
	}
	
	 @RequestMapping(value = "/systems/books", method = RequestMethod.GET)
		public String get(Model model) {
	    	List<Book> books = getAllBooks();
	    	BookListContainer bookForm = new BookListContainer();
			bookForm.setBooks(books);
			
			
			model.addAttribute("Books", bookForm);
	        return "updateBooks";
			
		}
	
	
	
	@PostMapping("/saveBooks")
    public String saveBooks(@ModelAttribute("Books") BookListContainer bookList) throws Exception{
        List<Book> books = bookList.getBooks();
        for(Book book : books) {
        	
			bookService.updateBook(book);
            System.out.println("Naziv: " + book.getTitle() + " " + "Opis: " + book.getDescription() + ", " + "Autor: " + book.getAuthor());
        }
        return "books";
    }
}
