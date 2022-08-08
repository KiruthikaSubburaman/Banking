<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add UPI</title>
</head>
<body>
	<div id="root">
		<div id="form" align="center">
			<form:form action="addupi" method="post" modelAttribute="addupi">
				<div>
					<label for="accountNumber">Account Number</label>
					<div>
						<form:select path="accountNumber">
							<c:forEach var="allupi" items="${allaccountno}">
								<form:option value="${allupi.accountNumber}"
									label="${allupi.accountNumber}" />
							</c:forEach>
						</form:select>
					</div>
				</div>
				<div>
					<label for="createNewPIN">Create New PIN</label>
					<div>
						<form:input path="createNewPIN" />
					</div>
				</div>
				<div>
					<label for="pinCreatedDate">pinCreatedDate</label>
					<div>
						<form:input path="pinCreatedDate" type="date" />
					</div>
				</div>
				<div>
					<form:button>Add new UPI</form:button>
				</div>
			</form:form>
		</div>
	</div>
	</div>
</body>
</html>