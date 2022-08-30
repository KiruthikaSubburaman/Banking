package com.chainsys.banking.model;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.validation.constraints.Digits;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Past;

import org.hibernate.validator.constraints.Range;

@Entity
@Table(name = "transactiondetails")
public class Transaction {
	@Column(name = "email")
	@Email(message = "*Invalid Email", regexp = "[a-z0-9._%+-]+@[a-z0-9.-]+\\.[a-z]{2,3}")
	private String email;
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@Column(name = "account_number")
	@Digits(integer = 15, fraction = 0)
	private long accountNumber;
	@Column(name = "transaction_number")
	@Digits(integer = 9, fraction = 0)
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO, generator = "transactionNumber")
	@SequenceGenerator(name = "transactionNumber", sequenceName = "transactionNumber", allocationSize = 12345)
	private long transactionNumber;
	@Column(name = "transaction_date")
	@Past
	private Date transactionDate;
	@Column(name = "transaction_type")
	private String transactionType;
	@Column(name = "deposit_amount")
	@NotNull(message = "DepositAmount is required")
	private float depositAmount;
	@Column(name = "withdrawal_amount")
	@NotNull(message = "WithdrawAmount is required")
	private float withdrawalAmount;
	@Column(name = "minimum_balance")
	@Range(min = (int) 3000.0)
	private float minimumBalance;
	@Column(name = "current_Balance")
	private float currentBalance;

	public float getMinimumBalance() {
		return minimumBalance;
	}

	public void setMinimumBalance(float minimumBalance) {
		this.minimumBalance = minimumBalance;
	}

	public float getCurrentBalance() {
		return currentBalance;
	}

	public void setCurrentBalance(float currentBalance) {
		this.currentBalance = currentBalance;
	}

	@ManyToOne
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

	public float getDepositAmount() {
		return depositAmount;
	}

	public void setDepositAmount(float depositedAmount) {
		this.depositAmount = depositedAmount;
	}

	public float getWithdrawalAmount() {
		return withdrawalAmount;
	}

	public void setWithdrawalAmount(float withdrawalAmount) {
		this.withdrawalAmount = withdrawalAmount;
	}

}
