<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>UPI List</title>
<style><%@include file="/WEB-INF/css/style.css"%></style>
</head>
<body>
	<div id="table root">
		<table >
		<caption></caption>
		
			<thead>
				<tr>
					<th>accountNumber</th>
					<th>createNewPIN</th>
					<th>pinCreatedDate</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="upi" items="${Upi}">
					<tr>
						<td>${upi.accountNumber}</td>
						<td>${upi.createNewPIN}</td>
						<td>${upi.pinCreatedDate}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>