<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html lang="em">
<head>
<meta charset="ISO-8859-1">
<title>Add UPI</title>
<style>
<%@include file="/WEB-INF/css/style.css"%>
</style>
</head>
<body>
<button style="font-size: 12px; background-color: #e7e7e7; color: black; float:left;" onclick="history.back()">Go Back</button>
	<form:form action="addupi" method="post" modelAttribute="addupi">
		<div class="form">
			<div class="box">
			<table>
			<caption></caption>		
			<tr>
			<th></th>
			</tr>
				<tbody>

					<tr>
						<td><label class="mandatory" for="accountNumber">Account Number</label></td>
						<td><form:input path="accountNumber" required="true"
								maxlength="15" title="Enter your account number" /></td>
					</tr>
					<form:errors path="accountNumber" cssClass="text-danger" />
					<tr>
						<td><label class="mandatory" for="createNewPIN">Create New PIN</label></td>
						<td><form:input path="createNewPIN" pattern="^\\d{6}$" title="pin must be number" required="true"
								maxlength="6" /></td>
					</tr>

					<form:errors path="createNewPIN" cssClass="text-danger" />
					<tr>
						<td><label for="pinCreatedDate">Pin Created Date</label></td>
						<td><form:input path="pinCreatedDate" type="date" /></td>
					</tr>

				</tbody>
			</table>
			<form:button>Create Pin</form:button>
            <div class="message">${result}</div>


			
		</div>
		</div>
	</form:form>
</body>
</html>