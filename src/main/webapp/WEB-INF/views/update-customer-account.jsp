<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html lang="em">
<head>
<meta charset="ISO-8859-1">
<title>Update customer Account</title>
<style><%@include file="/WEB-INF/css/style.css"%></style>
</head>
<body>
<button style="font-size: 12px; background-color: #e7e7e7; color: black; float:left;" onclick="history.back()">Go Back</button>
			<form:form action="updatecustomeraccount" method="post"
				modelAttribute="updatecustomeraccount">
<div class="form">
 <div class="box">				<table>
				<caption></caption>
				<tr>
				<th></th>
				</tr>
				<tbody>
				<tr>
					<td><label for="aadharNumber">AadharNumber</label></td>
					<td>	<form:input path="aadharNumber" /></td>
			   
				<form:errors path="aadharNumber" cssClass="text-danger" />
				 </tr>
				<tr>
					<td><label for="accountNumber">Account Number</label></td>
					<td>
						<form:input path="accountNumber" />
					</td>
			
				<form:errors path="accountNumber" cssClass="text-danger" />
					</tr>
				<tr>
					<td><label for="accountType">Account Type</label></td>
					<td>
						<form:input path="accountType" value="savings" readonly="readonly" />
					</td>
				
				<form:errors path="accountType" cssClass="text-danger" />
				</tr>
				<tr>
					<td><label for="dateOfOpening">Date Of Opening</label></td>
					<td>
						<form:input path="dateOfOpening" type="date" />
					</td>
				</tr>
				</tbody>
				</table>
	
				
					<form:button>Update Customer Account</form:button>
					
				</div>
				</div>
			</form:form>
</body>
</html>