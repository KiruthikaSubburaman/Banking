<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Update UPI</title>
<style><%@include file="/WEB-INF/css/style.css"%></style>
</head>
<body>
<button style="font-size: 12px; background-color: #e7e7e7; color: black; float:left;" onclick="history.back()">Go Back</button>
			<form:form action="updateupi" method="post"
				modelAttribute="updateupi">
				<div class="form">
			<table>
			<caption></caption>
				<tr>
				<th></th>
				</tr>
			<tbody>
				
				<tr>
					<td><label for="accountNumber">Account Number</label></td>
					<td>
						<form:input path="accountNumber" /></td>
				</tr>
				<%-- 	<form:errors path="accountNumber" cssClass="text-danger" /> --%>
				<tr>
					<td><label for="createNewPIN">Create New PIN</label></td>
					<td>
						<form:input path="createNewPIN" /></td>
					</tr>
				
				<%-- <form:errors path="createNewPIN" cssClass="text-danger" /> --%>
				<tr>
					<td><label for="pinCreatedDate">pinCreatedDate</label></td>
					<td>
						<form:input path="pinCreatedDate" type="date" />
					</td>
				</tr>
			
				</tbody>
				</table>
				<form:button>Update UPI </form:button>
			
				
				<%-- <form:errors path="pinCreatedDate" cssClass="text-danger" /> --%>
		</div>
		</form:form>			
</body>
</html>