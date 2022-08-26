package com.chainsys.banking.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/home")
public class IndexController {
	@GetMapping("/index")
	public String getIndex(Model model) {
		return "index";
	}
	@GetMapping("/customeruse")
	public String customerView(Model model) {
		return "logindemo";
	}
	
	@GetMapping("/homepage")
	public String getDemo(Model model) {
		return "main";
	}
	@GetMapping("/homelogin")
	public String getLogin(Model model) {
		return "logins";
	}
	

}
