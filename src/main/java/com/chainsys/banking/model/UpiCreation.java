package com.chainsys.banking.model;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "createupi")
public class UpiCreation {
	@Id
	@Column(name = "account_number")
	private long accountNumber;
	@Column(name = "create_new_pin")
	private int createNewPIN;
	@Column(name = "pin_created_date")
	private Date pinCreatedDate;
	
	@OneToOne(fetch = FetchType.LAZY)
	@JoinColumn(name ="account_number", nullable = false, insertable = false, updatable = false)
	private CustomerAccount customersAccount;

	public CustomerAccount getCustomersAccount() {
		return customersAccount;
	}

	public void setCustomersAccount(CustomerAccount customersAccount) {
		this.customersAccount = customersAccount;
	}

	@OneToOne
	@JoinColumn(name = "account_number", nullable = false, insertable = false, updatable = false)
	private CustomerAccount customerAccount;

	public CustomerAccount getCustomerAccount() {
		return customerAccount;
	}

	public void setCustomerAccount(CustomerAccount customerAccount) {
		this.customerAccount = customerAccount;
	}

	public long getAccountNumber() {
		return accountNumber;
	}

	public void setAccountNumber(long accountNumber) {
		this.accountNumber = accountNumber;
	}

	public int getCreateNewPIN() {
		return createNewPIN;
	}

	public void setCreateNewPIN(int createNewPIN) {
		this.createNewPIN = createNewPIN;
	}

	public Date getPinCreatedDate() {
		return pinCreatedDate;
	}

	public void setPinCreatedDate(Date pinCreatedDate) {
		this.pinCreatedDate = pinCreatedDate;
	}

}