<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Find UPI By Account Number</title>
</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="" method="get" modelAttribute="findupi">
				<div>
					<label for="accountNumber">Account Number</label>
					<div>
						<form:input path="accountNumber" readonly="true" />
					</div>
				</div>
				<div>
					<label for="createNewPIN">createNewPIN</label>
					<div>
						<form:input path="createNewPIN" readonly="true" />
					</div>
				</div>
				<div>
					<label for="pinCreatedDate">Pin Created Date</label>
					<div>
						<form:input path="pinCreatedDate" readonly="true" />
					</div>
				</div>

			</form:form>
		</div>
	</div>
</body>
</html>