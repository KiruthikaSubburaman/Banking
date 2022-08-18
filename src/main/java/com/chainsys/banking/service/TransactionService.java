package com.chainsys.banking.service;

import java.util.List;

import javax.validation.Valid;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.banking.dao.TransactionRepository;
import com.chainsys.banking.model.Transaction;

@Service
public class TransactionService {
	@Autowired
	private TransactionRepository transactionrepo;

	public List<Transaction> getTransactions() {
		List<Transaction> listTransaction = transactionrepo.findAll();
		return listTransaction;
	}

	public Transaction save(Transaction transaction) {

		return transactionrepo.save(transaction);
	}


	public Transaction findBytransactionNumber( long number) {
		return transactionrepo.findBytransactionNumber(number);
	}
	@Transactional
	public void deleteByTransactionNumber(long number) {
		transactionrepo.deleteByTransactionNumber(number);
	}

}
