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
import com.chainsys.banking.model.UpiCreation;
import com.chainsys.banking.service.CustomerService;
import com.chainsys.banking.service.UpiCreationService;

@Controller
@RequestMapping("/upicreation")
public class UpiCreationController {
	@Autowired
	UpiCreationService upiservice;

	@GetMapping("/upilist")
	public String getUpiList(Model model) {
		List<UpiCreation> upi = upiservice.getUpiList();
		model.addAttribute("Upi", upi);
		return "list-upi";
	}

	@GetMapping("/addupiform")
	public String showAddUpiForm(Model model) {
		UpiCreation upi = new UpiCreation();
		model.addAttribute("addupi", upi);
		return "add-upi-form";
	}

	@PostMapping("/addupi")
	public String addNewUpi(@ModelAttribute("addupi") UpiCreation upi) {
		upiservice.save(upi);
		return "redirect:/upicreation/upilist";
	}

	@GetMapping("/updateupiform")
	public String showUpdateForm(@RequestParam("accountNumber") long number, Model model) {
		UpiCreation upi = upiservice.findByAccountNumber(number);
		model.addAttribute("updateupi", upi);
		return "update-upi-form";
	}

	@PostMapping("/updateupi")
	public String UpdateUpi(@ModelAttribute("updateupi") UpiCreation upi) {
		upiservice.save(upi);
		return "redirect:/upicreation/upilist";
	}

	@GetMapping("/deleteupi")
	public String deleteUpi(@RequestParam("accountNumber") long number) {
		UpiCreation upi = upiservice.findByAccountNumber(number);
		upiservice.deleteByAccountNumber(number);
		return "redirect:/upicreation/upilist";
	}

	@GetMapping("/findupi")
	public String findUpi(@RequestParam("accountNumber") long number, Model model) {
		UpiCreation upi = upiservice.findByAccountNumber(number);
		model.addAttribute("findupi", upi);
		return "find-upi";
	}
}
