package com.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.demo.service.UserService;

@RestController
public class UserController {
	
	@Autowired
	private UserService userService;
	
	 @RequestMapping(value="/delete/{id}",method = RequestMethod.GET)  
	    public ModelAndView delete(@PathVariable int id){  
	    	userService.deleteById(id); 
	        return new ModelAndView("redirect:/showUsers");  
	    }  
}
