package com.chainsys.banking.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.chainsys.banking.model.Customer;
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

	@GetMapping("/addform")
	public String showAddForm(Model model) {
		Customer cus = new Customer();
		model.addAttribute("addcustomer", cus);
		return "add-customer-form";
	}

	@PostMapping("/add")
	public String addNewCustomer(@ModelAttribute("addcustomer") Customer cus) {
		crservice.save(cus);
		return "redirect:/customer/list";
	}

	@GetMapping("/updateform")
	public String showUpdateForm(@RequestParam("aadharNumber") long number, Model model) {
		Customer cus = crservice.findByNumber(number);
		model.addAttribute("updatecustomer", cus);
		return "update-customer-form";
	}

	@PostMapping("/updatecus")
	public String UpdateCustomers(@ModelAttribute("updatecustomer") Customer cus) {
		crservice.save(cus);
		return "redirect:/customer/list";
	}

	@GetMapping("/deletecustomer")
	public String deleteCustomer(@RequestParam("aadharNumber") long number) {
		Customer cus = crservice.findByNumber(number);
		crservice.deleteByAadharNumber(number);
		return "redirect:/customer/list";
	}

	@GetMapping("/findcustomerbynumber")
	public String findCustomerById(@RequestParam("aadharNumber") long number, Model model) {
		Customer cus = crservice.findByNumber(number);
		model.addAttribute("findcustomerbynumber", cus);
		return "find-customer-by-number";
	}
}
