<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>customer Account List</title>
</head>
<body>
	<div id="table root">
		<table>
			<thead>
				<tr>
					<th>Aadhar Number</th>
					<th>Account Number</th>
					<th>Account Type</th>
					<th>Date Of Opening</th>
					<th>Account Status</th>
					<th>Minimum Balance</th>
					<th>Current Balance</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="customer" items="${customeraccount}">
					<tr>
						<td>${customer.aadharNumber}</td>
						<td>${customer.accountNumber}</td>
						<td>${customer.accountType}</td>
						<td>${customer.dateOfOpening}</td>
						<td>${customer.accountStatus}</td>
						<td>${customer.minimumBalance}</td>
						<td>${customer.currentBalance}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>