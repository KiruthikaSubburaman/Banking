package com.chainsys.banking.model;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.validation.constraints.Digits;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Past;

import com.chainsys.banking.constraints.BirthDate;

@Entity
@Table(name = "Customers")
public class Customer {

	@Column(name = "customer_name")
	@NotNull(message = "CustomerName is required")
	private String customerName;
	@Column(name = "father_name")
	@NotNull(message = "FatherName is required")
	private String fatherName;
	@Column(name = "gender")
	private String gender;
	@Column(name = "dob")
	@BirthDate(message = "The birth date must be greater or equal than 18")
	@Past(message = "The date of birth must be in the past.")
	private Date dob;
	@Column(name = "address")
	@NotNull(message = "Address is required")
	private String address;
	@Column(name = "nationality")
	@NotNull(message = "Nationality is required")
	private String nationality;
	@Id
	@Column(name = "aadhar_number")
	@Digits(integer = 12, fraction = 0)
	private long aadharNumber;
	@Column(name = "mobile_number")
	@Digits(integer = 10, fraction = 0)
	private long mobileNumber;
	@Column(name = "email")
	@Email(regexp = "[a-z0-9._%+-]+@[a-z0-9.-]+\\.[a-z]{2,3}")
	private String email;
	@Column(name = "account_status")
	@NotNull(message = "AccountStatus is required")
	private String accountStatus;

	@OneToOne(mappedBy = "customer", fetch = FetchType.LAZY)
	private CustomerAccount customerAccount;

	public CustomerAccount getCustomerAccount() {
		return customerAccount;
	}

	public void setCustomerAccount(CustomerAccount customerAccount) {
		this.customerAccount = customerAccount;
	}

	public String getCustomerName() {
		return customerName;
	}

	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}

	public String getFatherName() {
		return fatherName;
	}

	public void setFatherName(String fatherName) {
		this.fatherName = fatherName;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public Date getDob() {
		return dob;
	}

	public void setDob(Date dob) {
		this.dob = dob;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getNationality() {
		return nationality;
	}

	public void setNationality(String nationality) {
		this.nationality = nationality;
	}

	public long getAadharNumber() {
		return aadharNumber;
	}

	public void setAadharNumber(long aadharNumber) {
		this.aadharNumber = aadharNumber;
	}

	public long getMobileNumber() {
		return mobileNumber;
	}

	public void setMobileNumber(long mobileNumber) {
		this.mobileNumber = mobileNumber;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAccountStatus() {
		return accountStatus;
	}

	public void setAccountStatus(String accountStatus) {
		this.accountStatus = accountStatus;
	}

}
