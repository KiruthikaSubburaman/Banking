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
import com.chainsys.banking.model.Transaction;
import com.chainsys.banking.service.CustomerAccountService;
import com.chainsys.banking.service.TransactionService;

@Controller
@RequestMapping("/transactiondetails")
public class TransactionController {
	@Autowired
	TransactionService transactionService;
	@Autowired
	CustomerAccountService customerAccountService;
	

	@GetMapping("/transactionlist")
	public String getTransactions(Model model) {
		List<Transaction> allTransactions = transactionService.getTransactions();
		model.addAttribute("alltransactions", allTransactions);
		return "list-transactions";
	}

	@GetMapping("/addtransactionform")
	public String showTransactionAddForm(Model model) {
		List<CustomerAccount> customerAccount=customerAccountService.customerAccount();
		model.addAttribute("allaccountno",customerAccount);
		Transaction transaction = new Transaction();
		model.addAttribute("addtransaction", transaction);
		return "add-transactions-form";
	}

	@PostMapping("/addtransactiondetails")
	public String addNewTransaction(@Valid@ModelAttribute("addtransaction") Transaction transaction,Errors errors,Model model) {
		if (errors.hasErrors()) {
			return "add-transactions-form";
		}
		CustomerAccount customerAccount=customerAccountService.findByAccountNumber(transaction.getAccountNumber());
		customerAccount.setCurrentBalance(customerAccount.getCurrentBalance()+transaction.getDepositAmount());
		if(customerAccount.getCurrentBalance()<transaction.getWithdrawalAmount()) {
			return "error-page";
		}
		customerAccount.setCurrentBalance(customerAccount.getCurrentBalance()-transaction.getWithdrawalAmount());
		customerAccountService.save(customerAccount);
		transaction.setCurrentBalance(customerAccount.getCurrentBalance());
		transactionService.save(transaction);
		customerAccount.setCurrentBalance(transaction.getCurrentBalance());
		model.addAttribute("balance", transaction.getCurrentBalance());
		return "redirect:/transactiondetails/findtransaction?transactionNumber="+transaction.getTransactionNumber();
	}
	
	@GetMapping("/updatetrans")
	public String showUpdateForm() {
		return "update-trans-button";
	}
	@GetMapping("/updatetransactionform")
	public String showTransactionUpdateForm(@Valid@RequestParam("transactionNumber") long number, Model model) {
		Transaction transaction = transactionService.findBytransactionNumber(number);
		model.addAttribute("updatetransaction", transaction);
		return "update-transaction-form";
	}

	@PostMapping("/updatetransaction")
	public String UpdateTransactions(@Valid@ModelAttribute("updatetransaction") Transaction transaction,Errors errors) {
		if (errors.hasErrors()) {
			return "update-transaction-form";
		}
		transactionService.save(transaction);
		return "redirect:/transactiondetails/findtransaction?transactionNumber=";
	}

	@GetMapping("/deletetransaction")
	public String deleteTransaction(@RequestParam("transactionnumber") long number) {
		Transaction transaction = transactionService.findBytransactionNumber(number);
		transactionService.deleteByTransactionNumber(number);
		return "redirect:/transactiondetails/transactionlist";
	}
	@GetMapping("/findtrans")
	public String showFindTransForm() {
		return "find-trans-button";
	}
	@GetMapping("/findtransaction")
	public String findTransaction(@RequestParam("transactionNumber") long number, Model model) {
		Transaction transaction = transactionService.findBytransactionNumber(number);
		model.addAttribute("findtransaction", transaction);
		return "find-transaction";
	}
}
