<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Find CustomerAccount By AccountNumber</title>
</head>
<body>
	<div id="root">
		<div id="form" align="center">
			<form:form action="" method="get" modelAttribute="findcustomeraccount">
				<div>
					<label for="aadharNumber">Aadhar Number</label>
					<div>
						<form:input path="aadharNumber" readonly="true" />
					</div>
				</div>
				<div>
					<label for="accountNumber">Account Number</label>
					<div>
						<form:input path="accountNumber" readonly="true" />
					</div>
				</div>
				<div>
					<label for="accountType">Account Type</label>
					<div>
						<form:input path="accountType" readonly="true" />
					</div>
				</div>
				<div>
					<label for="dateOfOpening">Date Of Opening</label>
					<div>
						<form:input path="dateOfOpening" readonly="true" />
					</div>
				</div>
				<div>
					<label for="accountStatus">Account Status</label>
					<div>
						<form:input path="accountStatus" readonly="true" />
					</div>
				</div>
				<div>
					<label for="minimumBalance">Minimum Balance</label>
					<div>
						<form:input path="minimumBalance" readonly="true" />
					</div>
				</div>
				<div>
					<label for="currentBalance">Current Balance</label>
					<div>
						<form:input path="currentBalance" readonly="true" />
					</div>
				</div>
	</form:form>
	</div>
	</div>
</body>
</html>