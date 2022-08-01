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
	private CustomerAccountRepository customeraccountrepo;

	public List<CustomerAccount>getCustomerAccount() {
		List<CustomerAccount> listCr = customeraccountrepo.findAll();
		return listCr;
	}

	public CustomerAccount save(CustomerAccount cra) {

		return customeraccountrepo.save(cra);
	}

	public CustomerAccount findByNumber(long number) {
		return customeraccountrepo.findByAccountNumber(number);
	}
@Transactional
	public void deleteByAccountNumber(long number) {
		customeraccountrepo.deleteByAccountNumber(number);
	}

}


