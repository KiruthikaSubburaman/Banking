<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add UPI</title>
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
			<%-- 	<form:errors path="accountNumber" cssClass="text-danger" /> --%>
				<div>
					<label for="createNewPIN">Create New PIN</label>
					<div>
						<form:input path="createNewPIN" />
					</div>
				</div>
				<%-- <form:errors path="createNewPIN" cssClass="text-danger" /> --%>
				<div>
					<label for="pinCreatedDate">pinCreatedDate</label>
					<div>
						<form:input path="pinCreatedDate" type="date" />
					</div>
				</div>
				<%-- <form:errors path="pinCreatedDate" cssClass="text-danger" /> --%>
				<div>
					<form:button>Add new UPI</form:button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>