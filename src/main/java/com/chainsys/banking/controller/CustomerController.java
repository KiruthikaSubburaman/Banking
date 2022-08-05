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
	public String addNewCustomer(@ModelAttribute("addcustomer") Customer customer) {
		customerService.save(customer);
		return "redirect:/customer/customerlist";
	}

	@GetMapping("/updatecustomerform")
	public String showUpdateCustomerForm(@RequestParam("aadharNumber") long number, Model model) {
		Customer customer = customerService.findByAadharNumber(number);
		model.addAttribute("updatecustomer", customer);
		return "update-customer-form";
	}

	@PostMapping("/updatecustomer")
	public String UpdateCustomers(@ModelAttribute("updatecustomer") Customer customer) {
		customerService.save(customer);
		return "redirect:/customer/customerlist";
	}

	@GetMapping("/deletecustomer")
	public String deleteCustomer(@RequestParam("aadharNumber") long number) {
		Customer customer = customerService.findByAadharNumber(number);
		customerService.deleteByAadharNumber(number);
		return "redirect:/customer/customerlist";
	}

	@GetMapping("/findcustomer")
	public String findCustomerByAadhar(@RequestParam("aadharNumber") long number, Model model) {
		Customer cus = customerService.findByAadharNumber(number);
		model.addAttribute("findcustomer", cus);
		return "find-customer";
	}
	@GetMapping("/getcustomerandaccount")
    public String getCustomerAndAccount(@RequestParam("aadharNumber") long number,Model model){
        CustomerAndAccountDto dto=customerService.getCustomerAccountDetails(number);
        model.addAttribute("customer",dto.getCustomer());
        model.addAttribute("customeraccount",dto.getCustomerAccount());
        return "list-customer-customeraccount";
    }
}
