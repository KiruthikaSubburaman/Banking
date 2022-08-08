package com.chainsys.banking.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.chainsys.banking.model.CustomerAccount;
import com.chainsys.banking.model.Transaction;
import com.chainsys.banking.model.UpiCreation;
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
	public String addNewTransaction(@ModelAttribute("addtransaction") Transaction transaction) {
		transactionService.save(transaction);
		return "redirect:/transactiondetails/transactionlist";
	}

	@GetMapping("/updatetransactionform")
	public String showTransactionUpdateForm(@Valid@RequestParam("accountNumber") long number, Model model) {
		Transaction transaction = transactionService.findByAccountNumber(number);
		model.addAttribute("updatetransaction", transaction);
		return "update-transaction-form";
	}

	@PostMapping("/updatetransaction")
	public String UpdateTransactions(@ModelAttribute("updatetransaction") Transaction transaction) {
		transactionService.save(transaction);
		return "redirect:/transactiondetails/transactionlist";
	}

	@GetMapping("/deletetransaction")
	public String deleteTransaction(@Valid@RequestParam("accountnumber") long number) {
		Transaction transaction = transactionService.findByAccountNumber(number);
		transactionService.deleteByAccountNumber(number);
		return "redirect:/transactiondetails/transactionlist";
	}

	@GetMapping("/findtransaction")
	public String findTransactionByAccountNumber(@RequestParam("accountNumber") long number, Model model) {
		Transaction transaction = transactionService.findByAccountNumber(number);
		model.addAttribute("findtransaction", transaction);
		return "find-transaction";
	}
}
