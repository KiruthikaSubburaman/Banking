package com.chainsys.banking.dao;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.chainsys.banking.model.CustomerAccount;

@Repository
public interface CustomerAccountRepository extends CrudRepository<CustomerAccount, Long> {
	CustomerAccount findByAccountNumber(long number);

	CustomerAccount save(CustomerAccount customerAccount);

	void deleteByAccountNumber(long number);

	List<CustomerAccount> findAll();
	

	List<CustomerAccount> findByAadharNumber(long number);
	
	CustomerAccount findCustomerByAadharNumber(long number);
}
