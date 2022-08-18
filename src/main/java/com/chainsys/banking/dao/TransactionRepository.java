package com.chainsys.banking.dao;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.chainsys.banking.model.Transaction;

@Repository
public interface TransactionRepository extends CrudRepository<Transaction, Long> {
	Transaction findBytransactionNumber(long number);
	Transaction save(Transaction transaction);

	void deleteByTransactionNumber(long number);

	List<Transaction> findAll();

	List<Transaction> findByaccountNumber(long number);
}
