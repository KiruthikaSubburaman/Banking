<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update UPI</title>
</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="updateupi" method="post"
				modelAttribute="updateupi">

				<div>
					<label for="accountNumber">Account Number</label>
					<div>
						<form:input path="accountNumber" />
					</div>
				</div>
				<div>
					<label for="createNewPIN">create New PIN</label>
					<div>
						<form:input path="createNewPIN" />
					</div>
				</div>
				<div>
					<label for="pinCreatedDate">pin Created Date</label>
					<div>
						<form:input path="pinCreatedDate" />
					</div>
				</div>
				<div>
					<form:button>Update UPI</form:button>
				</div>
			</form:form>
		</div>
	</div>
	</div>
</body>
</html>