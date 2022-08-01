<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer Account List</title>
</head>
<body>
	<div id="table root">
		<table>
			<thead>
				<tr>
					<th>aadharNumber</th>
					<th>accountNumber</th>
					<th>accountType</th>
					<th>dateOfOpening</th>
					<th>accountStatus</th>
					<th>minimumBalance</th>
					<th>currentBalance</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="cus" items="${allcusaccount}">
					<tr>
						<td>${cus.aadharNumber}</td>
						<td>${cus.accountNumber}</td>
						<td>${cus.accountType}</td>
						<td>${cus.dateOfOpening}</td>
						<td>${cus.accountStatus}</td>
						<td>${cus.minimumBalance}</td>
						<td>${cus.currentBalance}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>