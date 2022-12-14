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
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

@Entity
@Table(name = "Customers")
public class Customer {

	@Column(name = "customer_name")
	@Size(max = 20, min = 3, message = "*CustomerName length should be 3 to 20")
	@Pattern(regexp = "^[A-Za-z]\\w{3,20}$", message = "*Enter valid name ")
	private String customerName;
	@Column(name = "father_name")
	@Size(max = 20, min = 3, message = "*FatherName length should be 3 to 20")
	@Pattern(regexp = "^[A-Za-z]\\w{3,20}$", message = "*Enter valid name ")
	private String fatherName;
	@Column(name = "gender")
	private String gender;
	@Column(name = "dob")
	private Date dob;
	@Column(name = "address")
	@Pattern(regexp ="^[A-Za-z]\\w{3,20}$", message = "*Enter valid address ")
	private String address;
	@Pattern(regexp = "^[A-Za-z]\\w{3,20}$", message = "*Enter valid state ")
	@Column(name = "state")
	private String state;
	@Column(name = "pin_code")
	@Digits(message = "*Invalid Pin code", integer = 6, fraction = 0)
	private long pinCode;
	@Column(name = "nationality")
	private String nationality;
	@Id
	@Column(name = "aadhar_number")
	@Digits(message = "*Invalid Aadhar Number", integer = 12, fraction = 0)
	private long aadharNumber;
	@Column(name = "mobile_number")
	@Digits(message = "*Invalid Mobile Number", integer = 10, fraction = 0)
	private long mobileNumber;
	@Column(name = "email")
	@Email(message = "*Invalid Email", regexp = "[a-z0-9._%+-]+@[a-z0-9.-]+\\.[a-z]{2,3}")
	private String email;

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public long getPinCode() {
		return pinCode;
	}

	public void setPinCode(long pinCode) {
		this.pinCode = pinCode;
	}

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

}
