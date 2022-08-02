package com.chainsys.banking.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.banking.dao.CustomerAccountRepository;
import com.chainsys.banking.model.Customer;
import com.chainsys.banking.model.CustomerAccount;

@Service
public class CustomerAccountService {
	@Autowired
	private CustomerAccountRepository customerAccountRepository;

	public List<CustomerAccount> getCustomerAccount() {
		List<CustomerAccount> listCustomer = customerAccountRepository.findAll();
		return listCustomer;
	}

	public CustomerAccount save(CustomerAccount customerAccount) {

		return customerAccountRepository.save(customerAccount);
	}

	public CustomerAccount findByAccountNumber(long number) {
		return customerAccountRepository.findByAccountNumber(number);
	}

	public void deleteByAccountNumber(long number) {
		customerAccountRepository.deleteByAccountNumber(number);
	}

}
