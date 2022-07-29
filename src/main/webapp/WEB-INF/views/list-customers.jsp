<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer List</title>
</head>
<body>
	<div id="table root">
		<table>
			<thead>
				<tr>
					<th>customerName</th>
					<th>FatherName</th>
					<th>Gender</th>
					<th>DOB</th>
					<th>Address</th>
					<th>Nationality</th>
					<th>AadharNumber</th>
					<th>MobileNumber</th>
					<th>Email</th>
					<th>AccountStatus</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="cus" items="${allcustomers}">
					<tr>
						<td>${cus.customerName}</td>
						<td>${cus.fatherName}</td>
						<td>${cus.gender}</td>
						<td>${cus.dob}</td>
						<td>${cus.address}</td>
						<td>${cus.nationality}</td>
						<td>${cus.aadharNumber}</td>
						<td>${cus.mobileNumber}</td>
						<td>${cus.email}</td>
						<td>${cus.accountStatus}</td>
						
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>