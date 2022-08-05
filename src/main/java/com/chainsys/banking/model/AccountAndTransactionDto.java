package com.chainsys.banking.model;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

public class AccountAndTransactionDto {

    @Autowired
    private CustomerAccount customerAccount;
    private List<Transaction> transaction=new ArrayList<Transaction>();
    
    public CustomerAccount getCustomerAccount() {
		return customerAccount;
	}
	public void setCustomerAccount(CustomerAccount customerAccount) {
		this.customerAccount = customerAccount;
	}
	
    public List<Transaction> getTransaction() {
		return transaction;
	}
//	public void setTransaction(List<Transaction> transaction) {
//		this.transaction = transaction;
//	}
	public void addTransactions(Transaction trans)
    {
        transaction.add(trans);
    }

}