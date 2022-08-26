package com.chainsys.banking.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.banking.dao.AdminRepository;
import com.chainsys.banking.model.AdminLogin;

@Service
public class AdminService {

		@Autowired
		private AdminRepository  adminRepository;

		public List<AdminLogin> getAdmin() {
			return adminRepository.findAll();
		}

		public AdminLogin save(AdminLogin cr) {

			return adminRepository.save(cr);
		}
		public AdminLogin getUserNameAndUserPassword(String userName,String userPassword) {
			return adminRepository.findByUserNameAndUserPassword(userName, userPassword);     
		}
	}

