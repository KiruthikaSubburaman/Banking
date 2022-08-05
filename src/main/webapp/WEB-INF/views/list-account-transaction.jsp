<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Account and Transactions</title>
</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="getaccounttransactions" method="post" modelAttribute="accountdetails">
				<div>
					<label for="aadharNumber">Aadhar Number</label>
					<div>
						<form:input path="aadharNumber" />
					</div>
				</div>
				<div>
					<label for="accountNumber">Account Number</label>
					<div>
						<form:input path="accountNumber" />
					</div>
				</div>
				<div>
					<label for="accountType">Account Type</label>
					<div>
						<form:input path="accountType" />
					</div>
				</div>
				<div>
					<label for="dateOfOpening">Date Of Opening</label>
					<div>
						<form:input path="dateOfOpening" />
					</div>
				</div>
				<div>
					<label for="accountStatus">Account Status</label>
					<div>
						<form:input path="accountStatus" />
					</div>
				</div>
				<div>
					<label for="minimumBalance">Minimum Balance</label>
					<div>
						<form:input path="minimumBalance" />
					</div>
				</div>
				<div>
					<label for="currentBalance">CurrentBalance</label>
					<div>
						<form:input path="currentBalance" />
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