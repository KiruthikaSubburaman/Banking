package com.chainsys.banking.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.banking.dao.CustomerRepository;
import com.chainsys.banking.model.Customer;
import com.chainsys.banking.model.CustomerAccount;
import com.chainsys.banking.model.CustomerAccountDTO;

@Service
public class CustomerService {
	@Autowired
	private CustomerRepository customerRepository;

	public List<Customer> getCustomers() {
		List<Customer> listCustomer = customerRepository.findAll();
		return listCustomer;
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
@Transactional
public CustomerAccountDTO getCustomerAndAccount(long number) {
    
    Customer customer=findByAadharNumber(number);
 CustomerAccountDTO customeraccountdto=new CustomerAccountDTO();
  customeraccountdto.setCustomer(customer);
  CustomerAccount cusaccount=new CustomerAccount();
  cusaccount.setAadharNumber(number);
  cusaccount.setAccountNumber(number);
  cusaccount.setAccountStatus(null);
  cusaccount.setAccountType(null);
  cusaccount.setCurrentBalance(number);
  cusaccount.setDateOfOpening(null);
  cusaccount.setMinimumBalance(number);

    return customeraccountdto ;
}

}


