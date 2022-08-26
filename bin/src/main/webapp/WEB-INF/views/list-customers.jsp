<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>customer List</title>
<style><%@include file="/WEB-INF/css/style.css"%></style>
</head>
<body>
	<div id="table root">
		<table border="2" width="100%" cellpadding="2">
			<thead>
				<tr>
					<th>customerName</th>
					<th>FatherName</th>
					<th>Gender</th>
					<th>DOB</th>
					<th>Address</th>
					<th>State</th>
					<th>Pin Code</th>
					<th>Nationality</th>
					<th>AadharNumber</th>
					<th>MobileNumber</th>
					<th>Email</th>

				</tr>
			</thead>
			<tbody>
				<c:forEach var="customer" items="${allcustomers}">
					<tr>
						<td>${customer.customerName}</td>
						<td>${customer.fatherName}</td>
						<td>${customer.gender}</td>
						<td>${customer.dob}</td>
						<td>${customer.address}</td>
						<td>${customer.state}</td>
						<td>${customer.pinCode}</td>
						<td>${customer.nationality}</td>
						<td>${customer.aadharNumber}</td>
						<td>${customer.mobileNumber}</td>
						<td>${customer.email}</td>

					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>