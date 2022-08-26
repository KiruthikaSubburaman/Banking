<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>customer Account List</title>
<style>
<%@ include file ="/WEB-INF/css/tablestyle.css"%>
</style>
</head>
<body>
	
	<div class="table root">
		<table class="styled-table">
			<caption></caption>
<colgroup>
                <col span="11" style="background-color: #FFFFE0">
            </colgroup>
			<thead>
				<tr>
					<th>Aadhar Number</th>
					<th>Account Number</th>
					<th>Account Type</th>
					<th>Date Of Opening</th>
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
						<td>${customer.currentBalance}</td>

					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	<button
		style="font-size: 12px; background-color: #e7e7e7; color: black; float: left;"
		onclick="history.back()">Go Back</button>
</body>
</html>