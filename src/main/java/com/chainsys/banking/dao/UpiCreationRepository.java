package com.chainsys.banking.dao;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.chainsys.banking.model.UpiCreation;

@Repository
public interface UpiCreationRepository extends CrudRepository<UpiCreation, Long> {
	UpiCreation findByAccountNumber(long number);

	UpiCreation save(UpiCreation upi);

	void deleteByAccountNumber(long number);

	List<UpiCreation> findAll();
	UpiCreation findUpiByAccountNumber(long number);

}
