package com.palak.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.palak.model.User;
import com.palak.services.UserService;

@Controller
public class UserController 
{
	@Autowired
	private UserService userService;
	
	@RequestMapping("home")
	public String welcome()
	{
		return"home";
	}
	
	@RequestMapping("/register")
	public String register() {
		return "register";
	}
	
	@RequestMapping("/planA")
	public String Plan() {
		return "PlanA";
	}
	
	@RequestMapping("/planB")
	public String PlanB() {
		return "PlanB";     
	}
	
	@RequestMapping("/logout")
	public String logout() {
		return "home";
	}
	
	@PostMapping("/save-user")
	public String registerUser(@ModelAttribute User user, BindingResult bindingresult) {

		userService.saveUser(user);
		return "home";
	}
	
	@RequestMapping("/userlogin")
	public String userlogin() {

		return "userlogin";
	}

	@RequestMapping("/user-login")
	public String ulogin(@ModelAttribute User user, HttpServletRequest request) {

		if (userService.findByUsernameAndPassword(user.getUsername(), user.getPassword()) != null)
		{
			return "BMI";
		}
		
		else
		{
			request.setAttribute("error", "Invalid Username Or Password");
		    return "userlogin";
		}
	}
	
}














