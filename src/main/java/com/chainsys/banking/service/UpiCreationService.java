package com.chainsys.banking.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.banking.dao.UpiCreationRepository;
import com.chainsys.banking.model.Customer;
import com.chainsys.banking.model.UpiCreation;

@Service
public class UpiCreationService {
	@Autowired
	private UpiCreationRepository upiRepository;

	public List<UpiCreation> getUpiList() {
		List<UpiCreation> upi = upiRepository.findAll();
		return upi;
	}

	public UpiCreation save(UpiCreation upi) {

		return upiRepository.save(upi);
	}

	public UpiCreation findByAccountNumber(long number) {
		return upiRepository.findByAccountNumber(number);
	}

	public void deleteByAccountNumber(long number) {
		upiRepository.deleteByAccountNumber(number);
	}

}
