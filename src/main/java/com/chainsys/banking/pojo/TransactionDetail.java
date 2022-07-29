package com.chainsys.banking.pojo;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "TransactionDetails")
public class TransactionDetail {
	@Id
	@Column(name = "account_number")
	private long accountNumber;
	@Column(name = "transaction_number")
	private long transactionNumber;
	@Column(name = "transaction_date")
	private Date transactionDate;
	@Column(name = "transaction_type")
	private String transactionType;
	@Column(name = "deposited_amount")
	private float depositedAmount;
	@Column(name = "withdrawal_amount")
	private float withdrawalAmount;

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
