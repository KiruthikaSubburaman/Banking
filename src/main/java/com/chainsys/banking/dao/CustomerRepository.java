package com.chainsys.banking.dao;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.chainsys.banking.pojo.Customer;

public interface CustomerRepository extends CrudRepository<Customer, Integer> {
	Customer findById(int id);

	Customer save(Customer cus);

	void deleteById(int Customer_Id);

	List<Customer> findAll();

//    List<Customer> getCustomer();
}
