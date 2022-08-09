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
	public String CustomerView(Model model) {
		return "customerlogin";
	}
	@GetMapping("/hello")
	public String getImage(Model model) {
		return "mainindex";
	}
	@GetMapping("/kiki")
	public String getDemo(Model model) {
		return "demo";
	}
	@GetMapping("/mainpage")
	public String getHome(Model model) {
		return "Home";
	}
	

}
