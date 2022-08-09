<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Find CustomerAccount By AccountNumber</title>
<style>
body {
	background-image: url("https://media.istockphoto.com/vectors/widescreen-abstract-financial-chart-with-uptrend-line-graph-and-on-vector-id1156644488?k=20&m=1156644488&s=612x612&w=0&h=t4hyZNSbM34W1Wo62Pi2SGu1cfTKkV8PhWUYjvvM9vE=");
	height: 768px;
	width: 1366px;
	background-position: center top;
	background-repeat: no-repeat;
	background-size: cover;
	position: relative;
}

.text-danger {
	color: #e80c4d;
	font-size: 0.9em;
}
</style>
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