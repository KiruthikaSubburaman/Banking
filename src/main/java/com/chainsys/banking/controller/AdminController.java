package com.chainsys.banking.controller;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.chainsys.banking.exceptionhandler.InvalidInputDataException;
import com.chainsys.banking.model.AdminLogin;
import com.chainsys.banking.model.Customer;
import com.chainsys.banking.model.CustomerAccount;
import com.chainsys.banking.model.Transaction;
import com.chainsys.banking.service.AdminService;
import com.chainsys.banking.service.CustomerAccountService;
import com.chainsys.banking.service.CustomerService;
import com.chainsys.banking.service.TransactionService;
@Controller
@RequestMapping("/admin")
public class AdminController {
	@Autowired
	CustomerService customerService;
	@Autowired
	CustomerAccountService customerAccountService;
	@Autowired
	private AdminService adminService;
	@Autowired
	TransactionService transactionService;
	
	

	@GetMapping("/transactionlist")
	public String getTransactions(Model model) {
		List<Transaction> allTransactions = transactionService.getTransactions();
		model.addAttribute("alltransactions", allTransactions);
		return "list-transactions";
	}
	@GetMapping("/customerlist")
	public String getCustomers(Model model) {
		List<Customer> allCustomers = customerService.getCustomers();
		model.addAttribute("allcustomers", allCustomers);
		return "list-customers";
	}
	@GetMapping("/customeraccountlist")
	public String showCustomerAccountlist(Model model) {
		List<CustomerAccount> allCustomerAccount = customerAccountService.customerAccountList();
		model.addAttribute("customeraccount", allCustomerAccount);
		return "list-customer-account";
	}
	@GetMapping("/addadminform")
	public String showAddAdminForm(Model model) {
		AdminLogin theCmd = new AdminLogin();
		model.addAttribute("addadmin", theCmd);
		return "add-admin-form";
	 }
	

	@PostMapping("/add")
	public String addNewAdmin(@ModelAttribute("addadmin") AdminLogin theCmd,Errors errors,Model model) {
		try {
		if(errors.hasErrors()) {
			return "add-admin-form";
		}
		adminService.save(theCmd);
		 model.addAttribute("result", "Admin registration successful");
		 return "add-admin-form";
		}
		 catch(Exception er) {
		        model.addAttribute("result", "Failed to Register");
		        return "add-admin-form";
		    }
    }
	@GetMapping("/adminlogin")
    public String adminLogin(Model model) {
     AdminLogin  adminLogin=new AdminLogin();
        model.addAttribute("logins", adminLogin);
        return "admin-login-form";
    }
    @PostMapping("/adminuse")
    public String checkingAccess(@ModelAttribute("logins") AdminLogin theCmd,Model model) {
        AdminLogin  adminLogin = adminService.getUserNameAndUserPassword(theCmd.getUserName(),theCmd.getUserPassword());
        try {
    		if (adminLogin==null) {
    			 throw new InvalidInputDataException("No data found");
            } 
        }
        catch (InvalidInputDataException exception) {
            model.addAttribute("message", "Name or Password is incorrect");
            return  "admin-login-form";
        } 
    	return "redirect:/admin/adminindex";
    }

    @GetMapping("/adminindex")
	public String customerReg() {
		return "adminaccess";
	}
    @GetMapping("error")
	public String adminError() {
		return "adminsubmission";
	}
}
