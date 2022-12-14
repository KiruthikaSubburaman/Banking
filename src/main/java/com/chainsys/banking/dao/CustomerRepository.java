package com.chainsys.banking.dao;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.chainsys.banking.model.Customer;
@Repository
public interface CustomerRepository extends CrudRepository<Customer, Long> {
	Customer findByAadharNumber(long number);
	Customer findByEmail(String email);
	Customer save(Customer customer);

	void deleteByAadharNumber(long number);

	List<Customer> findAll();

	
	Customer findByEmailAndAadharNumber(String email,long number);
}
