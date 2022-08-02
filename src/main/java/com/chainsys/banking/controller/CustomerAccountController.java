package com.chainsys.banking.controller;

import java.util.List;

import javax.transaction.Transactional;

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
	CustomerAccountService customerAccountService;

	@GetMapping("/customeraccountlist")
	public String getCustomerAccount(Model model) {
		List<CustomerAccount> allCustomerAccount = customerAccountService.getCustomerAccount();
		model.addAttribute("customeraccount", allCustomerAccount);
		return "list-customer-account";
	}

	@GetMapping("/addcustomeraccountform")
	public String showAddCustomerAccountForm(Model model) {
		CustomerAccount customerAccount = new CustomerAccount();
		model.addAttribute("addcustomeraccount", customerAccount);
		return "add-customer-account";
	}

	@PostMapping("/addcustomeraccount")
	public String addNewCustomerAccount(@ModelAttribute("addcustomeraccount") CustomerAccount customerAccount) {
		customerAccountService.save(customerAccount);
		return "redirect:/customeraccount/customeraccountlist";
	}

	@GetMapping("/updatecustomeraccountform")
	public String showupdateCustomerAccountForm(@RequestParam("accountNumber") long number, Model model) {
		CustomerAccount customerAccount = customerAccountService.findByAccountNumber(number);
		model.addAttribute("updatecustomer", customerAccount);
		return "update-customer-account";
	}

	@PostMapping("/updateCustomeraccount")
	public String UpdateCustomerAccount(@ModelAttribute("updatecustomer") CustomerAccount customerAccount) {
		customerAccountService.save(customerAccount);
		return "redirect:/customeraccount/customeraccountlist";
	}

	@Transactional
	@GetMapping("/deletecustomeraccount")
	public String deleteCustomerAccount(@RequestParam("accountNumber") long number) {
		CustomerAccount customerAccount = customerAccountService.findByAccountNumber(number);
		customerAccountService.deleteByAccountNumber(number);
		return "redirect:/customeraccount/customeraccountlist";
	}

	@GetMapping("/findcustomeraccount")
	public String findCustomerAccount(@RequestParam("accountNumber") long number, Model model) {
		CustomerAccount customerAccount = customerAccountService.findByAccountNumber(number);
		model.addAttribute("findcustomeraccount", customerAccount);
		return "find-customer-account";
	}
}
