package com.chainsys.banking.model;

import org.springframework.beans.factory.annotation.Autowired;

public class AccountAndUpiDto {
	@Autowired
	private CustomerAccount customerAccount;
	private UpiCreation upiCreation;

	public CustomerAccount getCustomerAccount() {
		return customerAccount;
	}

	public void setCustomerAccount(CustomerAccount customerAccount) {
		this.customerAccount = customerAccount;
	}

	public UpiCreation getUpiCreation() {
		return upiCreation;
	}

	public void setUpiCreation(UpiCreation upiCreation) {
		this.upiCreation = upiCreation;
	}

}
