<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Add customer Account</title>
<style>
<%@include file="/WEB-INF/css/style.css"%>
</style>
</head>
<body>
	<button
		style="font-size: 12px; background-color: #e7e7e7; color: black; float: left;"
		onclick="history.back()">Go Back</button>
	<form:form action="addcustomeraccount" method="post"
		modelAttribute="addcustomeraccount">
		<div class="form">
			<div class="box">
			<table>
				<caption></caption>		
			<tr>
			<th></th></tr>
				<tbody>
					<tr>
						<td><label class="mandatory" for="aadharNumber">AadharNumber</label></td>
						<td><form:input path="aadharNumber"
								title="please enter your 12 digit aadhar number" maxlength="12"
								required="true" /></td>
					</tr>
					<form:errors path="aadharNumber" cssClass="text-danger" />

					<tr>
						<td><label for="accountType">Account Type</label></td>
						<td><form:input path="accountType" value="savings"
								readonly="readonly" required="true" /></td>
					</tr>
					<form:errors path="accountType" cssClass="text-danger" />
					<tr>
						<td><label class="mandatory" for="dateOfOpening">Date Of Opening</label></td>
						<td><form:input path="dateOfOpening" type="date" /></td>
					</tr>

				</tbody>
			</table>
			<form:button>Create Account</form:button>
		</div>
		</div>
	</form:form>
</body>
</html>