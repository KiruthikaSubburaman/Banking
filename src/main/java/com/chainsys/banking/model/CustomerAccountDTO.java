package com.chainsys.banking.model;

import java.util.ArrayList;
import java.util.List;

public class CustomerAccountDTO {
	    private Customer Customer;
	    private List<CustomerAccount> accountlist = new ArrayList<CustomerAccount>();

	    public Customer getCustomer() {
	        return Customer;
	    }

	    public void setCustomer(Customer Customer) {
	        this.Customer = Customer;
	    }

	    public List<CustomerAccount> getAccountlist() {
	        return accountlist;
	    }


	public void addCustomerAccount(CustomerAccount cusaccount) {
		accountlist.add(cusaccount);    
	}

	}


