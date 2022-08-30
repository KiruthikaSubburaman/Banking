<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Customer Access</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style type="text/css">
<%@include file="/WEB-INF/css/tablestyle.css"%>
<%@include file="/WEB-INF/css/customeraccess.css"%>
</style>
</head>
<body>
 <button class="button-85" role="button" onclick="document.location='/home/homepage'">LOGOUT</button>
<div class="box">
    <h1>WELCOME TO EASY BANK!!!</h1>
	<div class="navbar">
		<div class="dropdown">
		
			<button class="dropbtn">
				Customer<em class="fa fa-caret-down"></em>
			</button>
			<div class="dropdown-content">
			 
				<a
					href="/customer/updatecustomerform">Customer Details</a>
			</div>
		</div>
		<div class="dropdown">
			<button class="dropbtn">
				UPI <em class="fa fa-caret-down"></em>
			</button>
			<div class="dropdown-content">
				<a href="/upicreation/addupiform">Create New Pin</a> <a
					href="/upicreation/updateupiform">Change Pin</a>
			</div>
		</div>

		<div class="dropdown">
			<button class="dropbtn">
				Transaction <em class="fa fa-caret-down"></em>
			</button>
			<div class="dropdown-content">
				<a href="/transactiondetails/addtransactionform">New Transaction</a> 
				<a href="/customeraccount/getaccounttransactions">view Transactions</a>
			</div>
		</div>
	</div>
	</div>
</body>
</html>




