<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Account and Transactions</title>
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
		<div id="form">
			<table border="2" width="100%" cellpadding="2">
				<form:form action="getaccounttransactions" method="post"
					modelAttribute="accountdetails">
					<div>
						<label for="aadharNumber">Aadhar Number</label>
						<div>
							<form:input path="aadharNumber" readonly="true" />
						</div>
					</div>
					<div>
						<label for="accountNumber">Account Number</label>
						<div>
							<form:input path="accountNumber" readonly="true" />
						</div>
					</div>
					<div>
						<label for="accountType">Account Type</label>
						<div>
							<form:input path="accountType" readonly="true" />
						</div>
					</div>
					<div>
						<label for="dateOfOpening">Date Of Opening</label>
						<div>
							<form:input path="dateOfOpening" readonly="true" />
						</div>
					</div>
					<div>
						<label for="accountStatus">Account Status</label>
						<div>
							<form:input path="accountStatus" readonly="true" />
						</div>
					</div>
					<div>
						<label for="minimumBalance">Minimum Balance</label>
						<div>
							<form:input path="minimumBalance" readonly="true" />
						</div>
					</div>
					<div>
						<label for="currentBalance">CurrentBalance</label>
						<div>
							<form:input path="currentBalance" readonly="true" />
						</div>
					</div>
				</form:form>
				</div>
				</div>
				<div id="root">
					<table>
						<thead>
							<tr>
								<th>Account Number</th>
								<th>Transaction Number</th>
								<th>Transaction Date</th>
								<th>Transaction Type</th>
								<th>Deposited Amount</th>
								<th>Withdrawal Amount</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="transaction" items="${transactionlist}">
								<tr>
									<td>${transaction.accountNumber}</td>
									<td>${transaction.transactionNumber}</td>
									<td>${transaction.transactionDate}</td>
									<td>${transaction.transactionType}</td>
									<td>${transaction.depositedAmount}</td>
									<td>${transaction.withdrawalAmount}</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
</body>
</html>