package com.charvikent.mytest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
	
	
	@RequestMapping("/welcome")
	public String customwelcome(Model model) {
		return "welcome";
	}
	
	@RequestMapping("/homesc")
	public String scHome(Model model)
	{
		return "homesc";
	}
	
	@RequestMapping("/login")
	public String customlogin(Model model) {
		return "login";
	}
	
	@RequestMapping("/403")
	public String failureLogin(Model model) {
		return "403";
	}
	
	

}
