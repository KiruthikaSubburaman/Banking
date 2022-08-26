<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Index</title>
<style>
body {
	background-image:
		url("https://media.istockphoto.com/vectors/widescreen-abstract-financial-chart-with-uptrend-line-graph-and-on-vector-id1156644488?k=20&m=1156644488&s=612x612&w=0&h=t4hyZNSbM34W1Wo62Pi2SGu1cfTKkV8PhWUYjvvM9vE=");
	height: 768px;
	width: 1366px;
	background-position: center top;
	background-repeat: no-repeat;
	background-size: cover;
	position: relative;
}
</style>
</head>
<body>
	<div>

		<h1>Customer Details</h1>
	</div>
	<div>
		<a href="/customer/customerlist">Customer list</a>
	</div>
	<div>
		<a href="/customer/addcustomerform">Add Customer</a>
	</div>
	<div>
		<a href="/customer/updatecustomerform?aadharNumber=">Update
			Customer</a>
	</div>
	<div>
		<a href="/customer/deletecustomer?aadharNumber=">Delete Customer</a>
	</div>
	<div>
		<a href="/customer/findcustomer?aadharNumber=">Find Customer</a>
	</div>
	<div></div>

	<div>
		<h1>Customer Account Details</h1>
	</div>
	<div>
		<a href="/customeraccount/customeraccountlist">Customer Account
			List</a>
	</div>
	<div>
		<a href="/customeraccount/addcustomeraccountform">Add Customer
			Account</a>
	</div>
	<div>
		<a href="/customeraccount/updatecustomeraccountform?accountNumber=">Update
			Customer Account</a>
	</div>
	<div>
		<a href="/customeraccount/deletecustomeraccount?accountNumber=">Delete
			Customer Account</a>
	</div>
	<div>
		<a href="/customeraccount/findcustomeraccount?accountNumber=">Find
			Customer Account</a>
	</div>
	<div>
		<a href="/customer/getcustomerandaccount?aadharNumber=">Get
			Customer and Account</a>
	</div>
	<div></div>
	<div>
		<h1>Upi Details</h1>
	</div>
	<div>
		<a href="/upicreation/upilist">Upi List</a>
	</div>
	<div>
		<a href="/upicreation/addupiform">Add Upi</a>
	</div>
	<div>
		<a href="/upicreation/updateupiform?accountNumber=">Update Upi</a>
	</div>
	<div>
		<a href="/upicreation/deleteupi?accountNumber=">Delete Upi</a>
	</div>
	<div>
		<a href="/upicreation/findupi?accountNumber=">Find Upi</a>
	</div>
	<div>
		<a href="/customeraccount/getaccountandupi?accountNumber=">Get
			Account And Upi</a>
	</div>
	<div></div>
	<div>
		<h1>Transaction Details</h1>
	</div>
	<div>
		<a href="/transactiondetails/transactionlist">Transaction List</a>
	</div>
	<div>
		<a href="/transactiondetails/addtransactionform">Add Transaction</a>
	</div>
	<div>
		<a href="/transactiondetails/updatetransactionform?accountNumber=">Update
			Transaction</a>
	</div>
	<div>
		<a href="/transactiondetails/deletetransaction?accountnumber=">Delete
			Transaction</a>
	</div>
	<div>
		<a href="/transactiondetails/findtransaction?accountNumber=">FindTransaction</a>
	</div>
	<div>
		<a href="/customeraccount/getaccounttransactions?accountNumber=">Get
			Account Transactions</a>
	</div>
	<div></div>
</body>
</html>