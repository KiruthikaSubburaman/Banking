package com.chainsys.banking.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.chainsys.banking.pojo.Customer;
import com.chainsys.banking.service.CustomerService;

@Controller
@RequestMapping("/customer")
public class CustomerController {
	@Autowired
	CustomerService crservice;

	@GetMapping("/list")
	public String getCustomers(Model model) {
		List<Customer> allCustomers = crservice.getCustomers();
		model.addAttribute("allcustomers", allCustomers);
		return "list-customers";
	}

}
