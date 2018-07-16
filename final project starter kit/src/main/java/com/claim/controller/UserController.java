package com.claim.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.claim.entity.Plan;
import com.claim.entity.User;
import com.claim.service.UserService;

@Controller
public class UserController {
	
		
		@Autowired
		private UserService userService;
		
		@RequestMapping("/login")
		public ModelAndView login()
		{
			return new ModelAndView("login", "user", new User());
		}
		
		@RequestMapping(value="/login", method=RequestMethod.POST)
		public ModelAndView login(@ModelAttribute("user") User user, HttpSession session) {
			User myUser = userService.loginUser(user.getEmail(), user.getPassword());
			
			if(myUser != null)
			{
				session.setAttribute("loggedInUser", myUser);
				return new ModelAndView("profile","plan", new Plan());
			}
			else
				System.out.println("could not find user");
				return new ModelAndView("login", "user", new User());
		}
		
		@RequestMapping(value="/signup", method=RequestMethod.POST)
		public ModelAndView register(@ModelAttribute("user") User user) {
			//save user object to database
			userService.saveUser(user);
			System.out.println("User saved as " + user);
			return new ModelAndView("login","user", new User());
		}
		
}

