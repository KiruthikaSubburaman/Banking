package com.chainsys.banking.dao;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.chainsys.banking.model.AdminLogin;

@Repository
public interface AdminRepository extends CrudRepository<AdminLogin, Integer> {
	AdminLogin save(AdminLogin adminLogin);
	List<AdminLogin> findAll();
    AdminLogin findByUserNameAndUserPassword(String name,String str);
}
