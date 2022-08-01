package com.chainsys.banking.dao;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.chainsys.banking.model.CustomerAccount;
import com.chainsys.banking.model.UPI;
@Repository
public interface UPIRepository extends CrudRepository<UPI, Long> {
	UPI findByAccountNumber(long number);

	UPI save(UPI upi);

	void deleteByAccountNumber(long number);

	List<UPI> findAll();

}
