package com.chainsys.banking.controller;

import java.net.http.HttpRequest;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
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

import com.chainsys.banking.exceptionhandler.InvalidInputDataException;
import com.chainsys.banking.model.Customer;
import com.chainsys.banking.model.CustomerAndAccountDto;
import com.chainsys.banking.service.CustomerService;

@Controller
@RequestMapping("/customer")
public class CustomerController {
	@Autowired
	CustomerService customerService;

	@GetMapping("/customerlist")
	public String getCustomers(Model model) {
		List<Customer> allCustomers = customerService.getCustomers();
		model.addAttribute("allcustomers", allCustomers);
		return "list-customers";
	}

	@GetMapping("/addcustomerform")
	public String showCustomerAddForm(Model model) {
		Customer customer = new Customer();
		model.addAttribute("addcustomer", customer);
		return "add-customer-form";
	}

	@PostMapping("/addcustomer")
	public String addNewCustomer(@Valid @ModelAttribute("addcustomer") Customer customer, Errors errors) {

		if (errors.hasErrors()) {
			return "add-customer-form";
		}
		customerService.save(customer);
		return "registration-success";
	}

	@GetMapping("/updatecustomerbyaadhar")
	public String showUpdateForm() {
		return "update-customer-button";
		
	}

	@GetMapping("/updatecustomerform")
	public String showUpdateCustomerForm( Model model,HttpServletRequest request) {
		HttpSession session = request.getSession();
        long aadharNumber = (long) session.getAttribute("aadharNumber");
		Customer customer = customerService.findByAadharNumber(aadharNumber);
		model.addAttribute("updatecustomer", customer);
		if(customer!=null) {
			return  "update-customer-form";
		}else {
			model.addAttribute("result", "Id Not Found");
		
		return  "update-customer-button";
		}
	}

	@PostMapping("/updatecustomer")
	public String updateCustomers(@Valid @ModelAttribute("updatecustomer") Customer customer, Errors errors,Model model) {
		try{
			if (errors.hasErrors()) {
		
			return "update-customer-form";
		}
		customerService.save(customer);
		model.addAttribute("result", "Successfully Updated");
		return "update-customer-form";}
	catch(Exception er) {
		model.addAttribute("result", "Failed To Update");
		return "update-customer-form";
	}
	}

	@GetMapping("/deletecustomer")
	public String deleteCustomer(@RequestParam("aadharNumber") long number) {
		customerService.deleteByAadharNumber(number);
		return "redirect:/customer/customerlist";
	}
	@GetMapping("/findcustomerbyaadhar")
	public String showFindForm() {
		return "find-customer-button";
	}
	@GetMapping("/findcustomer")
	public String findCustomerByAadhar(@RequestParam("aadharNumber") long aadharNumber, Model model) {
		Customer cus = customerService.findByAadharNumber(aadharNumber);
		model.addAttribute("findcustomer", cus);
		if(cus!=null) {
			return  "find-customer";
		}else {
			model.addAttribute("message", "Id Not Found");
		
		return  "find-customer-button";
		}
	}
	@GetMapping("/getcustomeracc")
	public String showAccForm() {
		return "get-customer-account-button";
	}
	@GetMapping("/getcustomerandaccount")
	public String getCustomerAndAccount(@RequestParam("aadharNumber") long number, Model model) {
		CustomerAndAccountDto dto = customerService.getCustomerAccountDetails(number);
		model.addAttribute("customer", dto.getCustomer());
		model.addAttribute("customeraccount", dto.getCustomerAccount());
		return "list-customer-customeraccount";
	}

	@GetMapping("/customerpage")
	public String customerLogin(Model model) {
		Customer customer = new Customer();
		model.addAttribute("login", customer);
		return "customer-login-form";
	}

	@PostMapping("/customerlogin")
	public String checkingAccess(@ModelAttribute("login") Customer cus,HttpSession session,Model model) {
		Customer customer = customerService.getEmailAndAadharNumber(cus.getEmail(), cus.getAadharNumber());
		if (customer != null) {
			session.setAttribute("aadharNumber", customer.getAadharNumber());
			return "redirect:/customer/customerindex";
		} else {
			model.addAttribute("result", "Please enter valid email and aadhar number");
		}
			return "invalid customer error";
	}



	@GetMapping("/customerindex")
	public String customerReg() {
		return "customeraccess";
	}

	@GetMapping("/customeraccountuses")
	public String customerAccount() {
		return "customeraccount";
	}

	@GetMapping("/upiuses")
	public String upiCreation() {
		return "upicreation";
	}

	@GetMapping("transactionuses")
	public String transaction() {
		return "Transaction";
	}
	@GetMapping("error")
	public String customerError() {
		return "customersubmission";
	}

}
