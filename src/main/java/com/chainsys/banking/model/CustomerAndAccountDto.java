package com.chainsys.banking.model;

import org.springframework.beans.factory.annotation.Autowired;

public class CustomerAndAccountDto {
	@Autowired
	private Customer customer;
	private CustomerAccount customerAccount;

	public Customer getCustomer() {
		return customer;
	}

	public void setCustomer(Customer customer) {
		this.customer = customer;
	}

	public CustomerAccount getCustomerAccount() {
		return customerAccount;
	}

	public void setCustomerAccount(CustomerAccount customerAccount) {
		this.customerAccount = customerAccount;
	}
}