<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Transaction List</title>
</head>
<body>
	<div id="table root">
	<table border="2" width="100%" cellpadding="2">
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
				<c:forEach var="transaction" items="${alltransactions}">
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