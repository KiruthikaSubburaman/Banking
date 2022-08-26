package com.chainsys.banking.controller;

import java.util.List;

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

import com.chainsys.banking.model.CustomerAccount;
import com.chainsys.banking.model.UpiCreation;
import com.chainsys.banking.service.CustomerAccountService;
import com.chainsys.banking.service.UpiCreationService;

@Controller
@RequestMapping("/upicreation")
public class UpiCreationController {
	@Autowired
	UpiCreationService upiService;
	@Autowired
	CustomerAccountService customerAccountService;

	@GetMapping("/upilist")
	public String getUpiList(Model model) {
		List<UpiCreation> upi = upiService.getUpiList();
		model.addAttribute("Upi", upi);
		return "list-upi";
	}

	@GetMapping("/addupiform")
	public String showAddUpiForm(Model model) {
		List<CustomerAccount> customerAccount=customerAccountService.customerAccount();
		model.addAttribute("allaccountno",customerAccount);
		UpiCreation upi=new UpiCreation();
		model.addAttribute("addupi", upi);
		return "add-upi-form";
	}

	@PostMapping("/addupi")
	public String addNewUpi(@Valid@ModelAttribute("addupi") UpiCreation upi,Errors errors,Model model) {
		try{
			if (errors.hasErrors()) {
		
			return "add-upi-form";
		}
			
		upiService.save(upi);
		model.addAttribute("result", "Upi Created Successfully");
	 return "add-upi-form";
	}catch(Exception er) {
		model.addAttribute("result", "Failed to Create");
		return "add-upi-form";
	}
	}
	@GetMapping("/updatepin")
	public String showUpdateForm() {
		return "update-upi-button";
	}
	@GetMapping("/updateupiform")
	public String showUpdateForm(@Valid@RequestParam("accountNumber") long number, Model model) {
		UpiCreation upi = upiService.findByAccountNumber(number);
		model.addAttribute("updateupi", upi);
		if(upi!=null) {
			return  "update-upi-form";
		}else {
			model.addAttribute("result", "Account number Not Found");
		
		return  "update-upi-button";
		}
	}

	@PostMapping("/updateupi")
	public String updateUpi(@Valid@ModelAttribute("updateupi") UpiCreation upi,Errors errors,Model model) {
		try{
			if (errors.hasErrors()) {
		
			return "update-upi-form";
		}
			
		upiService.save(upi);
		model.addAttribute("result", "Upi changed Successfully");
	 return "update-upi-form";
	}catch(Exception er) {
		model.addAttribute("result", "Failed to change Pin");
		return "update-upi-form";
	}
	}

	@GetMapping("/deleteupi")
	public String deleteUpi(@Valid@RequestParam("accountNumber") long number) {
		upiService.deleteByAccountNumber(number);
		return "redirect:/upicreation/upilist";
	}
	
	@GetMapping("/findupi")
	public String findUpi(@RequestParam("accountNumber") long number, Model model) {
		UpiCreation upi = upiService.findByAccountNumber(number);
		model.addAttribute("findupi", upi);
		return "find-upi";
	}
}
