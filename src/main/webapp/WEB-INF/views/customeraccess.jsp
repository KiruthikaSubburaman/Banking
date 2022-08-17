<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Customer Access</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body {
	background-image:
		url("https://img.freepik.com/premium-vector/banking-business-banner-finance-savings-silhouette-city-background_48369-11851.jpg?w=2000");
	background-height: 786px;
	background-width: 1366px;
	background-attachment: fixed;
	background-size: cover;
	font-family: Arial, Helvetica, sans-serif;
}

h1 {
	font-family: lucida Handwriting, Cursive;
	color: black;
}

.navbar {
	overflow: hidden;
/* 	background-color: #38fca4; */
}

.navbar a {
	float: left;
	font-size: 16px;
	/* color: white; */
	text-align: center;
	padding: 14px 16px;
	text-decoration: none;
}

.dropdown {
	float: left;
	overflow: hidden;
}

.dropdown .dropbtn {
	font-size: 20px;
	border: none;
	outline: none;
	color: #000000;
	padding: 14px 16px;
	background-color: inherit;
	font-family: inherit;
	margin: 0;
}

 a:hover, .dropdown:hover .dropbtn {
/* 	background-color: #fff;
 */}

.dropdown-content {
	display: none;
	position: absolute;
	background-color: #f9f9f9;
	min-width: 160px;
	box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
	z-index: 1;
}

.dropdown-content a {
	float: none;
	color: black;
	padding: 12px 16px;
	text-decoration: none;
	display: block;
	text-align: left;
}

.dropdown-content a:hover {
	background-color: #ddd;
}

.dropdown:hover .dropdown-content {
	display: block;
}
</style>
</head>
<body>
	<h1 align="center">Welcome</h1>

	<div class="navbar">
		<div class="dropdown">
			<button class="dropbtn">
				Customer<em class="fa fa-caret-down"></em>
			</button>
			<div class="dropdown-content">
				<a href="/customer/findcustomerbyaadhar">View Customer</a> 
				<a
					href="/customer/updatecustomerbyaadhar">Update Customer</a>
			</div>
		</div>

		<div class="dropdown">
			<button class="dropbtn">
				Account <i class="fa fa-caret-down"></i>
			</button>
			<div class="dropdown-content">
				<a href="/customeraccount/updateaccount">Update Account</a> <a
					href="/customeraccount/findaccount">view Account</a>
			</div>
		</div>

		<div class="dropdown">
			<button class="dropbtn">
				UPI <i class="fa fa-caret-down"></i>
			</button>
			<div class="dropdown-content">
				<a href="/upicreation/addupiform">Create New Pin</a> <a
					href="/upicreation/updatepin">Change Pin</a>
			</div>
		</div>

		<div class="dropdown">
			<button class="dropbtn">
				Transaction <i class="fa fa-caret-down"></i>
			</button>
			<div class="dropdown-content">
				<a href="/transactiondetails/addtransactionform">New Transaction</a> 
				<a href="/customeraccount/getaccounttrans">view Transactions</a>
			</div>
		</div>
	</div>

</body>
</html>




