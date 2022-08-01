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
import com.chainsys.banking.model.CustomerAccount;
import com.chainsys.banking.service.CustomerAccountService;
import com.chainsys.banking.service.CustomerService;

@Controller
@RequestMapping("/customeraccount")
public class CustomerAccountController {
	@Autowired
	CustomerAccountService craservice;

	@GetMapping("/list")
	public String getCustomerAccount(Model model) {
		List<CustomerAccount> allCusAccount = craservice.getCustomerAccount();
		model.addAttribute("allcusaccount", allCusAccount);
		return "list-customer-account";
	}

	@GetMapping("/addform")
	public String showAddForm(Model model) {
		CustomerAccount cus = new CustomerAccount();
		model.addAttribute("addcustomeraccount", cus);
		return "add-customer-account";
	}

	@PostMapping("/add")
	public String addNewCustomerAccount(@ModelAttribute("addcustomeraccount") CustomerAccount cus) {
		craservice.save(cus);
		return "redirect:/customeraccount/list";
	}

	@GetMapping("/updateform")
	public String showUpdateForm(@RequestParam("accountNumber") long number, Model model) {
		CustomerAccount cus = craservice.findByNumber(number);
		model.addAttribute("updatecustomer", cus);
		return "update-customeraccount-form";
	}

	@PostMapping("/updatecus")
	public String UpdateCustomerAccount(@ModelAttribute("updatecustomeraccount") CustomerAccount cus) {
		craservice.save(cus);
		return "redirect:/customeraccount/list";
	}

	@GetMapping("/deletecustomer")
	public String deleteCustomerAccount(@RequestParam("accountNumber") long number) {
		CustomerAccount cus = craservice.findByNumber(number);
		craservice.deleteByAccountNumber(number);
		return "redirect:/customer/list";
	}

	@GetMapping("/findcustomerbynumber")
	public String findCustomerAccountById(@RequestParam("accountNumber") long number, Model model) {
		CustomerAccount cus = craservice.findByNumber(number);
		model.addAttribute("findcustomeraccountbynumber", cus);
		return "find-customeraccount-by-number";
	}
}
