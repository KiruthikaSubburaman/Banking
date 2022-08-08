package com.chainsys.banking.dao;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.chainsys.banking.model.Customer;
@Repository
public interface CustomerRepository extends CrudRepository<Customer, Long> {
	Customer findByAadharNumber(long number);

	Customer save(Customer customer);

	void deleteByAadharNumber(long number);

	List<Customer> findAll();

//    List<Customer> getCustomer();
	
//	Customer findBycustomerAccountId(long number);
	Customer findByAadharNumberAndEmail(long number,String str);
}
