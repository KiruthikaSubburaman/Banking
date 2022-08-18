<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Transaction List</title>
<style><%@include file="/WEB-INF/css/button.css"%></style>
</head>
<body>
	<div id="table root">
		<table class="styled-table">
		<caption></caption>
				<tr>
				<th></th>
				</tr>
			<thead>
				<tr>
					<th>Account Number</th>
					<th>Transaction Number</th>
					<th>Transaction Date</th>
					<th>Transaction Type</th>
					<th>Deposit Amount</th>
					<th>Withdrawal Amount</th>
					<th>Minimum Balance</th>
					<th>Current Balance</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="transaction" items="${alltransactions}">
					<tr>
						<td>${transaction.accountNumber}</td>
						<td>${transaction.transactionNumber}</td>
						<td>${transaction.transactionDate}</td>
						<td>${transaction.transactionType}</td>
						<td>${transaction.depositAmount}</td>
						<td>${transaction.withdrawalAmount}</td>
						<td>${transaction.minimumBalance}</td>
						<td>${transaction.currentBalance}</td>

					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>