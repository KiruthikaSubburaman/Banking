package com.chainsys.banking.pojo;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "CreateUPI")
public class CreateUPI {
	@Id
	@Column(name = "account_number")
	private long accountNumber;
	@Column(name = "create_new_pin")
	private int createNewPIN;
	@Column(name = "pin_created_date")
	private Date pinCreatedDate;

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
