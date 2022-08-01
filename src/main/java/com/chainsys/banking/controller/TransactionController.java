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

import com.chainsys.banking.model.Transaction;
import com.chainsys.banking.service.TransactionService;

@Controller
@RequestMapping("/transactiondetails")
public class TransactionController {
	@Autowired
	TransactionService transactionservice;

	@GetMapping("/list")
	public String getTransactions(Model model) {
		List<Transaction> allTransactions = transactionservice.getTransactions();
		model.addAttribute("alltransactions", allTransactions);
		return "list-transactions";
	}

	@GetMapping("/addform")
	public String showAddForm(Model model) {
		Transaction transaction = new Transaction();
		model.addAttribute("addtransaction", transaction);
		return "add-transactions-form";
	}

	@PostMapping("/add")
	public String addNewTransaction(@ModelAttribute("addtransaction") Transaction transaction) {
		transactionservice.save(transaction);
		return "redirect:/transactions/list";
	}

	@GetMapping("/updateform")
	public String showUpdateForm(@RequestParam("accountNumber") long number, Model model) {
		Transaction transaction = transactionservice.findByNumber(number);
		model.addAttribute("updatetransaction", transaction);
		return "update-transaction-form";
	}

	@PostMapping("/updatecus")
	public String UpdateTransactions(@ModelAttribute("updateTransaction") Transaction transaction) {
		transactionservice.save(transaction);
		return "redirect:/transaction/list";
	}

	@GetMapping("/deletetransaction")
	public String deleteTransaction(@RequestParam("accountNumber") long number) {
		Transaction transaction = transactionservice.findByNumber(number);
		transactionservice.deleteByAccountNumber(number);
		return "redirect:/transactions/list";
	}

	@GetMapping("/findtransactionbynumber")
	public String findTransactionById(@RequestParam("accountNumber") long number, Model model) {
		Transaction transaction = transactionservice.findByNumber(number);
		model.addAttribute("findtransactionbynumber", transaction);
		return "find-transaction-by-number";
	}
}
