package com.crud.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.crud.spring.model.User;

@Controller
public class MyController {
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String getHome() {
		return "home";
	}
	
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public String getRegister(Model model) {
		model.addAttribute("user", new User());
		return "register";
	}
	@RequestMapping(value = "/saveUser", method = {RequestMethod.POST,RequestMethod.GET})
	public String getRegister(@ModelAttribute User user) {
		System.out.println(user);
		return "redirect:/register";
	}
	
}
