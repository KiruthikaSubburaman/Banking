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
import com.chainsys.banking.model.UPI;
import com.chainsys.banking.service.CustomerService;
import com.chainsys.banking.service.UPIService;

@Controller
@RequestMapping("/CreateUPI")
public class UPIController {
	@Autowired
	UPIService upiservice;

	@GetMapping("/upilist")
	public String getUPIList(Model model) {
		List<UPI> upi = upiservice.getUPIList();
		model.addAttribute("Upi", upi);
		return "list-upi";
	}

	@GetMapping("/addform")
	public String showAddForm(Model model) {
		UPI upi = new UPI();
		model.addAttribute("Upi", upi);
		return "add-upi-form";
	}

	@PostMapping("/add")
	public String addNew(@ModelAttribute("addupi") UPI upi) {
		upiservice.save(upi);
		return "redirect:/customer/list";
	}

	@GetMapping("/updateform")
	public String showUpdateForm(@RequestParam("accountNumber") long number, Model model) {
		UPI upi = upiservice.findByNumber(number);
		model.addAttribute("updateupi", upi);
		return "update-upi-form";
	}

	@PostMapping("/updateupi")
	public String UpdateUPI(@ModelAttribute("updateupi") UPI upi) {
		upiservice.save(upi);
		return "redirect:/customer/list";
	}

	@GetMapping("/deleteupi")
	public String deleteCustomer(@RequestParam("accountNumber") long number) {
		UPI upi = upiservice.findByNumber(number);
		upiservice.deleteByAccountNumber(number);
		return "redirect:/customer/list";
	}

	@GetMapping("/findupibynumber")
	public String findUPIById(@RequestParam("accountNumber") long number, Model model) {
		UPI upi = upiservice.findByNumber(number);
		model.addAttribute("findupibynumber", upi);
		return "find-upi-by-number";
	}
}
