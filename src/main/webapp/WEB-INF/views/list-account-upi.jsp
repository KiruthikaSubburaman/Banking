<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Account and Upi</title>
</head>
<body>
	<div id="root">
		<div id="form">
		<table border="2" width="100%" cellpadding="2">
			<form:form action="" method="post" modelAttribute="customeraccount">
				<div>
					<label for="aadharNumber">Aadhar Number</label>
					<div>
						<form:input path="aadharNumber" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="accountNumber">Account Number</label>
					<div>
						<form:input path="accountNumber" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="accountType">Account Type</label>
					<div>
						<form:input path="accountType" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="dateOfOpening">Date Of Opening</label>
					<div>
						<form:input path="dateOfOpening" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="accountStatus">Account Status</label>
					<div>
						<form:input path="accountStatus" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="minimumBalance">Minimum Balance</label>
					<div>
						<form:input path="minimumBalance" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="currentBalance">CurrentBalance</label>
					<div>
						<form:input path="currentBalance" readonly="true"/>
					</div>
				</div>
			</form:form>
		</div>
	</div>
	<div id="root">
		<div id="form">
			<form:form action="" method="post" modelAttribute="upilist">
				<div>
					<label for="accountNumber">Account Number</label>
					<div>
						<form:input path="accountNumber" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="createNewPIN">Create New PIN</label>
					<div>
						<form:input path="createNewPIN" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="pinCreatedDate">pinCreatedDate</label>
					<div>
						<form:input path="pinCreatedDate" readonly="true"/>
					</div>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>
