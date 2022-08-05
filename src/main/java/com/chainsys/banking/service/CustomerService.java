package com.chainsys.banking.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.banking.dao.CustomerAccountRepository;
import com.chainsys.banking.dao.CustomerRepository;
import com.chainsys.banking.model.Customer;
import com.chainsys.banking.model.CustomerAccount;
import com.chainsys.banking.model.CustomerAndAccountDto;

@Service
public class CustomerService {
	@Autowired
	private CustomerRepository customerRepository;

	@Autowired
	private CustomerAccountRepository customerAccountRepository;

	public List<Customer> getCustomers() {
		List<Customer> Customer = customerRepository.findAll();
		return Customer;
	}

	public Customer save(Customer customer) {

		return customerRepository.save(customer);
	}

	public Customer findByAadharNumber(long number) {
		return customerRepository.findByAadharNumber(number);
	}

	@Transactional
	public void deleteByAadharNumber(long number) {
		customerRepository.deleteByAadharNumber(number);
	}
	public List<Customer> allCustomer(){
		return customerRepository.findAll();
	}

public CustomerAndAccountDto getCustomerAccountDetails(long number) 
{  
    Customer customer=findByAadharNumber(number);
    CustomerAndAccountDto dto=new CustomerAndAccountDto();
    dto.setCustomer(customer);
    CustomerAccount customerAccount=customerAccountRepository.findCustomerByAadharNumber(number);
    dto.setCustomerAccount(customerAccount);
    return dto;
}
}
    
