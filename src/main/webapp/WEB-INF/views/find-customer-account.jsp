<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Find CustomerAccount By AccountNumber</title>
<style><%@include file="/WEB-INF/css/style.css"%></style>
</head>
<body>
			<form:form action="" method="get"
				modelAttribute="findcustomeraccount">
				<div class="form" >
				<div class="box">
				<table>
					<caption></caption>		
			<tr>
			<th></th>
			</tr>
				<tbody>
				<tr>
					<td><label for="aadharNumber">AadharNumber</label></td>
					<td>
						<form:input path="aadharNumber" />
				</td>
				</tr>
				<form:errors path="aadharNumber" cssClass="text-danger" />
				<tr>
					<td><label for="accountNumber">AccountNumber</label></td>
					<td>
						<form:input path="accountNumber" />
					</td>
				</tr>
				<form:errors path="accountNumber" cssClass="text-danger" />
				<tr>
					<td><label for="accountType">Account Type</label></td>
					<td>
						<form:input path="accountType" value="savings" readonly="readonly" />
					</td>
				</tr>
				<form:errors path="accountType" cssClass="text-danger" />
				<tr>
					<td><label for="dateOfOpening">Date Of Opening</label></td>
					<td>
						<form:input path="dateOfOpening" type="date" />
					</td>
				</tr>
				<tr>
				<td>	<label for="currentBalance">CurrentBalance</label> </td>
					<td>
						<form:input path="currentBalance" required="true" />
					</td>

				</tr> 
</tbody>
</table>
	</div>
	</div>
	</form:form>
	<div><button onclick="document.location='/customer/customerindex'">Back to Login</button></div>
</body>
</html>