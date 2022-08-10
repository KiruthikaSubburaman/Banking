package com.chainsys.banking.controller;

import java.util.List;

import javax.transaction.Transactional;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.chainsys.banking.model.AccountAndTransactionDto;
import com.chainsys.banking.model.AccountAndUpiDto;
import com.chainsys.banking.model.Customer;
import com.chainsys.banking.model.CustomerAccount;
import com.chainsys.banking.service.CustomerAccountService;
import com.chainsys.banking.service.CustomerService;

@Controller
@RequestMapping("/customeraccount")
public class CustomerAccountController {
	@Autowired
	CustomerAccountService customerAccountService;

	@Autowired
	CustomerService customerService;

	@GetMapping("/customeraccountlist")
	public String showCustomerAccountlist(Model model) {
		List<CustomerAccount> allCustomerAccount = customerAccountService.customerAccountList();
		model.addAttribute("customeraccount", allCustomerAccount);
		return "list-customer-account";
	}

	@GetMapping("/addcustomeraccountform")
	public String showAddCustomerAccountForm(Model model) {
		List<Customer> allCustomer = customerService.allCustomer();
		model.addAttribute("allaadharno", allCustomer);
		CustomerAccount customerAccount = new CustomerAccount();
		model.addAttribute("addcustomeraccount", customerAccount);
		return "add-customer-account";
	}

	@PostMapping("/addcustomeraccount")
	public String addNewCustomerAccount(@Valid @ModelAttribute("addcustomeraccount") CustomerAccount customerAccount,
			Errors errors) {
		if (errors.hasErrors()) {
			return "add-customer-account";
		}
		else {
		customerAccount=customerAccountService.save(customerAccount);
		return "redirect:/customeraccount/findcustomeraccount?accountNumber="+customerAccount.getAccountNumber();
		}
	}

	@GetMapping("/updatecustomeraccountform")
	public String showupdateCustomerAccountForm(@RequestParam("accountNumber") long number, Model model) {
		CustomerAccount customerAccount = customerAccountService.findByAccountNumber(number);
		model.addAttribute("updatecustomeraccount", customerAccount);
		return "update-customer-account";
	}

	@PostMapping("/updatecustomeraccount")
	public String UpdateCustomerAccount(@Valid @ModelAttribute("updatecustomeraccount") CustomerAccount customerAccount,
			Errors errors) {
		if (errors.hasErrors()) {
			return "update-customer-account";
		}
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

	@GetMapping("/getaccounttransactions")
	public String getAccountTransactions(@RequestParam("accountNumber") long number, Model model) {
		AccountAndTransactionDto dto = customerAccountService.getAccountTransaction(number);
		model.addAttribute("accountdetails", dto.getCustomerAccount());
		model.addAttribute("transactionlist", dto.getTransaction());
		return "list-account-transaction";
	}

	@GetMapping("/getaccountandupi")
	public String getAccountAndUpi(@RequestParam("accountNumber") long number, Model model) {
		AccountAndUpiDto dto = customerAccountService.getAccountAndUpiDetails(number);
		model.addAttribute("customeraccount", dto.getCustomerAccount());
		model.addAttribute("upilist", dto.getUpiCreation());
		return "list-account-upi";
	}

}
