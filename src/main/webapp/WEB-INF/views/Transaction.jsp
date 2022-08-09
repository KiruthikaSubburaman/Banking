<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Transactions</title>
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
	<div align="center">
		<div>
			<h1>Transaction</h1>
		</div>

		<div>
			<h3>
				<div>
					<a href="/transactiondetails/addtransactionform">New
						Transaction</a>
				</div>
			</h3>
		</div>
		<div>
			<h3>
				<div>
					<a href="/transactiondetails/findtransaction?accountNumber=">FindTransaction</a>
				</div>
			</h3>
		</div>
		<div>
			<h3>
				<div>
					<a href="/customeraccount/getaccounttransactions?accountNumber=">Get
						Account Transactions</a>
				</div>
			</h3>
		</div>
	</div>
</body>
</html>