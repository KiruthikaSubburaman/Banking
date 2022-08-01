package com.chainsys.banking.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.banking.dao.CustomerRepository;
import com.chainsys.banking.model.Customer;

@Service
public class CustomerService {
	@Autowired
	private CustomerRepository customerrepo;

	public List<Customer> getCustomers() {
		List<Customer> listCr = customerrepo.findAll();
		return listCr;
	}

	public Customer save(Customer cr) {

		return customerrepo.save(cr);
	}

	public Customer findByNumber(long number) {
		return customerrepo.findByAadharNumber(number);
	}
@Transactional
	public void deleteByAadharNumber(long number) {
		customerrepo.deleteByAadharNumber(number);
	}

}


