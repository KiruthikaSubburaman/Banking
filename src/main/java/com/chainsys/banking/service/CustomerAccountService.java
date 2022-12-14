package com.chainsys.banking.service;

import java.util.Iterator;
import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.banking.dao.CustomerAccountRepository;
import com.chainsys.banking.dao.TransactionRepository;
import com.chainsys.banking.dao.UpiCreationRepository;
import com.chainsys.banking.model.AccountAndTransactionDto;
import com.chainsys.banking.model.AccountAndUpiDto;
import com.chainsys.banking.model.CustomerAccount;
import com.chainsys.banking.model.Transaction;
import com.chainsys.banking.model.UpiCreation;

@Service
public class CustomerAccountService {
	@Autowired
	private CustomerAccountRepository customerAccountRepository;
	@Autowired
	TransactionRepository transactionRepository;
	@Autowired
	UpiCreationRepository upiCreationRepository;

	public List<CustomerAccount> customerAccountList() {
		return customerAccountRepository.findAll();
	}

	public CustomerAccount save(CustomerAccount customerAccount) {

		return customerAccountRepository.save(customerAccount);
	}

	public CustomerAccount findByAccountNumber(long number) {
		return customerAccountRepository.findByAccountNumber(number);
	}
	public CustomerAccount findByEmail(String email) {
		return customerAccountRepository.findByEmail(email);
	}

	public void deleteByAccountNumber(long number) {
		customerAccountRepository.deleteByAccountNumber(number);
	}
	public List<CustomerAccount> customerAccount(){
		return customerAccountRepository.findAll();
	}

	public AccountAndTransactionDto getAccountTransaction(String email) {
		CustomerAccount customerAccount = findByEmail(email);
		AccountAndTransactionDto dto = new AccountAndTransactionDto();
		dto.setCustomerAccount(customerAccount);
		List<Transaction> trans = transactionRepository.findByEmail(email);
		Iterator<Transaction> itr = trans.iterator();
		while (itr.hasNext()) {
			dto.addTransactions(itr.next());
		}
		return dto;
	}
	public AccountAndUpiDto getAccountAndUpiDetails(long number) 
	{  
	    CustomerAccount customerAccount=findByAccountNumber(number);
	    AccountAndUpiDto dto=new AccountAndUpiDto();
	    dto.setCustomerAccount(customerAccount);
	    UpiCreation upi=upiCreationRepository.findUpiByAccountNumber(number);
	    dto.setUpiCreation(upi);
	    return dto;
	}

}
