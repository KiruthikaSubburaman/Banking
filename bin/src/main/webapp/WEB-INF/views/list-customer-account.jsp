<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>customer Account List</title>
<style><%@include file="/WEB-INF/css/style.css"%></style>
</head>
<body>
<button style="font-size: 12px; background-color: #e7e7e7; color: black; float:left;" onclick="history.back()">Go Back</button>
	<div id="table root">
		<table border="2" width="100%" cellpadding="2">
			<thead>
				<tr>
					<th>Aadhar Number</th>
					<th>Account Number</th>
					<th>Account Type</th>
					<th>Date Of Opening</th>

				</tr>
			</thead>
			<tbody>
				<c:forEach var="customer" items="${customeraccount}">
					<tr>
						<td>${customer.aadharNumber}</td>
						<td>${customer.accountNumber}</td>
						<td>${customer.accountType}</td>
						<td>${customer.dateOfOpening}</td>

					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>