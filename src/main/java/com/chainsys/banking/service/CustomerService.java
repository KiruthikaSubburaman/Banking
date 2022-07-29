package com.chainsys.banking.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.banking.dao.CustomerRepository;
import com.chainsys.banking.pojo.Customer;

@Service
public class CustomerService {
	@Autowired
	private CustomerRepository crepo;

	public List<Customer> getCustomers() {
		List<Customer> listCr = crepo.findAll();
		return listCr;
	}

	public Customer save(Customer cr) {

		return crepo.save(cr);
	}
}
