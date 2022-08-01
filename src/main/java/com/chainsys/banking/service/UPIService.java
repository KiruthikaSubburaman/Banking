package com.chainsys.banking.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.banking.dao.UPIRepository;
import com.chainsys.banking.model.Customer;
import com.chainsys.banking.model.UPI;

@Service
public class UPIService {
	@Autowired
	private UPIRepository upirepo;

	public List<UPI>getUPIList() {
		List<UPI> upi = upirepo.findAll();
		return upi;
	}

	public UPI save(UPI upi) {

		return upirepo.save(upi);
	}

	public UPI findByNumber(long number) {
		return upirepo.findByAccountNumber(number);
	}
@Transactional
	public void deleteByAccountNumber(long number) {
		upirepo.deleteByAccountNumber(number);
	}

}


