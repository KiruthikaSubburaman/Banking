package com.chainsys.banking.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name = "Admin")
public class AdminLogin {
	
		@Id
		@Column(name = "user_id")
		@GeneratedValue(strategy = GenerationType.AUTO, generator = "user_id")
	    @SequenceGenerator(name = "user_id", sequenceName = "user_id",  allocationSize = 1)
		private int userId;    //Primary key
		public int getUserId() {
			return userId;
		}
		public void setUserId(int userId) {
			this.userId = userId;
		}
		public String getUserName() {
			return userName;
		}
		public void setUserName(String userName) {
			this.userName = userName;
		}
		public String getUserPassword() {
			return userPassword;
		}
		public void setUserPassword(String userPassword) {
			this.userPassword = userPassword;
		}
		@Column(name = "user_name")
		private String userName;
		@Column(name = "user_password")
		private String userPassword;
		
}
