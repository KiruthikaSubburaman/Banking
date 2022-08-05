package com.chainsys.banking.model;

import java.sql.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "customeraccount")
public class CustomerAccount {
	
	@Column(name = "aadhar_number")
	private long aadharNumber;
	@Id
	@Column(name = "account_number")
	private long accountNumber;
	@Column(name = "account_type")
	private String accountType;
	@Column(name = "date_of_opening")
	private Date dateOfOpening;
	@Column(name = "account_status")
	private String accountStatus;
	@Column(name = "minimum_balance")
	private float minimumBalance;
	@Column(name = "current_Balance")
	private float currentBalance;

	@OneToOne(mappedBy ="customersAccount", fetch = FetchType.LAZY)
	private UpiCreation upiCreation;
	
	public UpiCreation getUpiCreation() {
		return upiCreation;
	}

	public void setUpiCreation(UpiCreation upiCreation) {
		this.upiCreation = upiCreation;
	}

	@OneToMany(mappedBy="customerAccount",fetch= FetchType.LAZY )
    private List<Transaction> transaction;
    
        public List<Transaction> getTransaction() {
		return transaction;
	}

	public void setTransaction(List<Transaction> transaction) {
		this.transaction = transaction;
    }

	@OneToOne(fetch = FetchType.LAZY)
	@JoinColumn(name ="aadhar_number", nullable = false, insertable = false, updatable = false)
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

	public String getAccountStatus() {
		return accountStatus;
	}

	public void setAccountStatus(String accountStatus) {
		this.accountStatus = accountStatus;
	}

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

}
