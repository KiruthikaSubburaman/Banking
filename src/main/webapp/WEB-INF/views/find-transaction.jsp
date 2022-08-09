<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Find transactions By Account Number</title>
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
	<div id="root">
		<div id="form" align="center">
			<form:form action="" method="get"
				modelAttribute="findtransaction">
				<div>
					<label for="accountNumber">Account Number</label>
					<div>
						<form:input path="accountNumber" readonly="true" />
					</div>
				</div>
				<div>
					<label for="transactionNumber">Transaction Number</label>
					<div>
						<form:input path="transactionNumber" readonly="true" />
					</div>
				</div>
				<div>
					<label for="transactionDate">Transaction Date</label>
					<div>
						<form:input path="transactionDate" readonly="true" />
					</div>
				</div>
				<div>
					<label for="transactionType">Transaction Type</label>
					<div>
						<form:input path="transactionType" readonly="true" />
					</div>
				</div>
				<div>
					<label for="depositedAmount">Deposited Amount</label>
					<div>
						<form:input path="depositedAmount" readonly="true" />
					</div>
				</div>
				<div>
					<label for="withdrawalAmount">Withdrawal Amount</label>
					<div>
						<form:input path="withdrawalAmount" readonly="true" />
					</div>
					<div></div>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>