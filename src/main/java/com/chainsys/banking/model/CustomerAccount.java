package com.chainsys.banking.model;

import java.sql.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.validation.constraints.Digits;
import javax.validation.constraints.Past;

@Entity
@Table(name = "customeraccount")
public class CustomerAccount {
	@Column(name = "aadhar_number")
	@Digits(message = "*Invalid Aadhar Number", integer = 12, fraction = 0)
	private long aadharNumber;

	@Column(name = "account_number")
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO, generator = "account_number")
	@SequenceGenerator(name = "account_number", sequenceName = "account_number", allocationSize = 12345)
	private long accountNumber;
	@Column(name = "account_type")
	private String accountType;
	@Column(name = "date_of_opening")
	@Past
	private Date dateOfOpening;
	@Column(name = "current_Balance")
	private float currentBalance;

	public float getCurrentBalance() {
		return currentBalance;
	}

	public void setCurrentBalance(float currentBalance) {
		this.currentBalance = currentBalance;
	}

	@OneToOne(mappedBy = "customersAccount", fetch = FetchType.LAZY)
	private UpiCreation upiCreation;

	public UpiCreation getUpiCreation() {
		return upiCreation;
	}

	public void setUpiCreation(UpiCreation upiCreation) {
		this.upiCreation = upiCreation;
	}

	@OneToMany(mappedBy = "customerAccount")
	private List<Transaction> transaction;

	public List<Transaction> getTransaction() {
		return transaction;
	}

	public void setTransaction(List<Transaction> transaction) {
		this.transaction = transaction;
	}

	@OneToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "aadhar_number", nullable = false, insertable = false, updatable = false)
	private Customer customer;

	public Customer getCustomer() {
		return customer;
	}

	public void setCustomer(Customer customer) {
		this.customer = customer;
	}

	public long getAadharNumber() {
		return aadharNumber;
	}

	public void setAadharNumber(long aadharNumber) {
		this.aadharNumber = aadharNumber;
	}

	public long getAccountNumber() {
		return accountNumber;
	}

	public void setAccountNumber(long accountNumber) {
		this.accountNumber = accountNumber;
	}

	public String getAccountType() {
		return accountType;
	}

	public void setAccountType(String accountType) {
		this.accountType = accountType;
	}

	public Date getDateOfOpening() {
		return dateOfOpening;
	}

	public void setDateOfOpening(Date dateOfOpening) {
		this.dateOfOpening = dateOfOpening;
	}

}
