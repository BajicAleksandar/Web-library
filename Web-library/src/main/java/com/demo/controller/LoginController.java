package com.demo.controller;


import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import com.demo.beans.UserListContainer;
import com.demo.entity.Authorities;
import com.demo.entity.Book;
import com.demo.entity.MembershipCard;
import com.demo.entity.User;
import com.demo.repository.UserRepository;
import com.demo.service.BookService;
import com.demo.service.MembershipCardService;
import com.demo.service.UserService;

import javassist.NotFoundException;

@Controller
public class LoginController {
	
	@Autowired
	private UserRepository userRepository;
	
	@Autowired
	private BookService bookService;
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private MembershipCardService cardService;
	
	@GetMapping("/all")
	public  List<User> getAllUsers() {
        List<User> users = userService.findAll();
        return users;

	}
	
//	@GetMapping("/books")
//	public List<Book> getAllBooks(){
//		return bookService.getAllBooks();
//	}
	
	@GetMapping("/login")
    public ModelAndView login() {
    ModelAndView model = new ModelAndView();
    model.setViewName("login");
		return model;
	}
	
	@GetMapping("/home")
    public ModelAndView home() {
    ModelAndView model = new ModelAndView();
  
    	 model.setViewName("home");
 
		return model;
	}
	
	@GetMapping("/")
    public ModelAndView index() {
    ModelAndView model = new ModelAndView();
    model.setViewName("index");
		return model;
	}
	
	
	@GetMapping("/systems")
    public ModelAndView admin() {
    ModelAndView model = new ModelAndView();
    model.setViewName("systems");
		return model;
	}
	
	@GetMapping("/gallery")
    public ModelAndView gallery() {
    ModelAndView model = new ModelAndView();
    model.setViewName("gallery");
		return model;
	}
	
	@GetMapping("/access-denied")
    public ModelAndView accessDenied() {
    ModelAndView model = new ModelAndView();
    model.setViewName("access-denied");
		return model;
	}
	
//	@GetMapping("/registration")
//    public ModelAndView registrationForm() {
//    ModelAndView model = new ModelAndView();
//    model.setViewName("registration");
//		return model;
//	}
	
	 @RequestMapping("/registration")
	    public String registrationForm(Model model) {
	        model.addAttribute( new User());
	        return "registration";
	    }
	
	/**
	@PostMapping("/registration")
    public Map<String,Object> registration(@RequestBody Map<String,String> body) {
	Map<String,Object> response = new HashMap();
	if(validate(body)) {
		String username = body.get("username");
		String password = body.get("password");
        String email = body.get("email");
        String name = body.get("name");
        String lastname = body.get("lastname");
        String phoneNumber = body.get("phoneNumber");
        String status = body.get("status");
        String authorities = body.get("authorities");
        String lastPayment = body.get("lastPayment");
        String dateEnlistment = body.get("dateEnlistment");
        String typeOfMembershipFee = body.get("typeOfMembershipFee");
        User user = new User();
        MembershipCard card = new MembershipCard();
        user.setMembershipCard(new MembershipCard());
        user.setUsername(username);
        user.setPassword(password);
        user.setEmail(email);
        user.setName(name);
        user.setLastname(lastname);
        user.setPhoneNumber(phoneNumber);
        user.setStatus(status);
        user.setAuthorities(authorities); // ovde sam napravio jos jedan setter, jer prvi nije bio String
		card.setLastPayment(lastPayment);
		card.setDateEnlistment(dateEnlistment);
		card.setTypeOfMembershipFee(typeOfMembershipFee);
		userService.save(user);
		cardService.save(card);
		
		
       
	}
	
	return response;
	
	
	} **/
	
	@RequestMapping(value="/registration",method=RequestMethod.POST)
	public String registerSuccess(@RequestParam("name") String name,@RequestParam("lastname") String lastname,@RequestParam(name="email") String email,@RequestParam(name="phoneNumber") String phoneNumber,
			@RequestParam("password") String password, @RequestParam("username") String username,
			@RequestParam("authorities") Authorities authorities, @RequestParam("status") String status,
			@RequestParam("dateEnlistment") String dateEnlistment, @RequestParam("lastPayment") String lastPayment,
			@RequestParam("typeOfMembershipFee") String typeOfMembershipFee){ //, @RequestParam("membershipCard") MembershipCard membershipCard
		User user = new User(name, lastname, username, password, email, phoneNumber, authorities, status);
		user.setUsername(username);
        user.setPassword(password);
        user.setEmail(email);
        user.setName(name);
        user.setLastname(lastname);
        user.setPhoneNumber(phoneNumber);
        user.setStatus(status);
        user.setAuthorities(authorities);
        user.setMembershipCard(new MembershipCard(dateEnlistment, lastPayment, typeOfMembershipFee, user));
		//MembershipCard card = new MembershipCard(dateEnlistment, lastPayment, typeOfMembershipFee, user);
		//card.setLastPayment(lastPayment);
		//card.setDateEnlistment(dateEnlistment);
		//card.setTypeOfMembershipFee(typeOfMembershipFee);
		userService.save(user);
		//cardService.save(card);
		return "obavestenje";
	}
	
	
	
//	private boolean validate(Map<String,String> body){
//        return !body.get("username").isEmpty() && !body.get("password").isEmpty()
//                && !body.get("email").isEmpty() && !body.get("name").isEmpty()
//                && !body.get("lastname").isEmpty() && !body.get("dateEnlistment").isEmpty();
//    }
	
	@GetMapping("/registration/info")
    public ModelAndView obavestenje() {
    ModelAndView model = new ModelAndView();
    model.setViewName("obavestenje");
		return model;
	}
	
	
	
//	    @RequestMapping(value = "/showUsers", method = RequestMethod.GET)
//	    public String getUsers(Model model) throws Exception{
//	        List<User> users = getAllUsers();
//	        UserListContainer userList = new UserListContainer();
//	        userList.setUsers(users);
//	        model.addAttribute("Users", userList);
//	        return "showUsers";
//
//	}
	    @PostMapping("/save")
	    public String saveUsers(@ModelAttribute("Users") UserListContainer userList) throws Exception{
	        List<User> users = userList.getUsers();
	        for(User user : users) {
	        	
				userService.updateStatus(user);
	            System.out.println("Ime: " + user.getName() + " " + "Prezime: " + user.getLastname() + ", " + "Status: " + user.getStatus());
	        }
	        return "showUsers"; 
	    }
	    
	    
	    @RequestMapping(value = "/systems/users", method = RequestMethod.GET)
		public String get(Model model) {
	    	List<User> users = getAllUsers();
	    	UserListContainer userForm = new UserListContainer();
			userForm.setUsers(users);
			
			
			model.addAttribute("Users", userForm);
	        return "add-contact";
			
		}
	    
	   
	 
	    @GetMapping("/systems/activeUsers")
	    public ModelAndView activeUsers() {
	    ModelAndView model = new ModelAndView();
	    model.setViewName("allUsers");
			return model;
		}
	     
	    @GetMapping("/teacher")
	    public ModelAndView teacher() {
	    ModelAndView model = new ModelAndView();
	    model.setViewName("teacher");
			return model;
		}
	    
	    @GetMapping("/contact")
	    public ModelAndView kontakt() {
	    ModelAndView model = new ModelAndView();
	    model.setViewName("kontakt");
			return model;
		}
	    
	   
}
	
