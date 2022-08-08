package com.chainsys.banking.model;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.validation.constraints.Digits;
import javax.validation.constraints.NotNull;

@Entity
@Table(name = "transactiondetails")
public class Transaction {
	@Id
	@Column(name = "account_number")
	@Digits(integer = 15, fraction = 0)
	private long accountNumber;
	@Column(name = "transaction_number")
	@Digits(integer = 15, fraction = 0)
	private long transactionNumber;
	@Column(name = "transaction_date")
	private Date transactionDate;
	@Column(name = "transaction_type")
	private String transactionType;
	@Column(name = "deposited_amount")
	@NotNull(message = "DepositAmount is required")
	private float depositedAmount;
	@Column(name = "withdrawal_amount")
	@NotNull(message = "WithdrawAmount is required")
	private float withdrawalAmount;
	
	@ManyToOne(fetch=FetchType.LAZY)
    @JoinColumn(name="account_number", nullable=false,insertable=false,updatable=false)
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

	public long getTransactionNumber() {
		return transactionNumber;
	}

	public void setTransactionNumber(long transactionNumber) {
		this.transactionNumber = transactionNumber;
	}

	public Date getTransactionDate() {
		return transactionDate;
	}

	public void setTransactionDate(Date transactionDate) {
		this.transactionDate = transactionDate;
	}

	public String getTransactionType() {
		return transactionType;
	}

	public void setTransactionType(String transactionType) {
		this.transactionType = transactionType;
	}

	public float getDepositedAmount() {
		return depositedAmount;
	}

	public void setDepositedAmount(float depositedAmount) {
		this.depositedAmount = depositedAmount;
	}

	public float getWithdrawalAmount() {
		return withdrawalAmount;
	}

	public void setWithdrawalAmount(float withdrawalAmount) {
		this.withdrawalAmount = withdrawalAmount;
	}

}
