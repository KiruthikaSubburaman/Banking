<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update customer Account</title>
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
			<form:form action="updatecustomeraccount" method="post"
				modelAttribute="updatecustomeraccount">
				<div>
					<label for="aadharNumber">AadharNumber</label>
					<div>
						<form:select path="aadharNumber">
							<c:forEach var="allcus" items="${allaadharno}">
								<form:option value="${allcus.aadharNumber}"
									label="${allcus.aadharNumber}" />
							</c:forEach>
						</form:select>
					</div>
				</div>
				<form:errors path="aadharNumber" cssClass="text-danger" />
				<div>
					<label for="accountNumber">Account Number</label>
					<div>
						<form:input path="accountNumber" />
					</div>
				</div>
				<%-- <form:errors path="accountNumber" cssClass="text-danger" /> --%>
				<div>
					<label for="accountType">Account Type</label>
					<div>
						<form:select path="accountType">
							<form:option value="savings">Savings</form:option>
						</form:select>
					</div>
				</div>
				<form:errors path="accountType" cssClass="text-danger" />
				<div>
					<label for="dateOfOpening">Date Of Opening</label>
					<div>
						<form:input path="dateOfOpening" type="date" />
					</div>
				</div>
				<%-- <form:errors path="dateOfOpening" cssClass="text-danger" /> --%>
				<div>
					<label for="accountStatus">Account Status</label>
					<div>
						<form:input path="accountStatus" />
					</div>
				</div>
				<form:errors path="accountStatus" cssClass="text-danger" />
				<div>
					<label for="minimumBalance">Minimum Balance</label>
					<div>
						<form:select path="minimumBalance">
							<form:option value="3000">Minimum Balance</form:option>
						</form:select>
					</div>
				</div>
				<%-- <form:errors path="minimumBalance" cssClass="text-danger" /> --%>
				<div>
					<label for="currentBalance">CurrentBalance</label>
					<div>
						<form:input path="currentBalance" />
					</div>

				</div>
				<%-- <form:errors path="currentBalance" cssClass="text-danger" /> --%>


				<div>
					<form:button>Update Customer Account</form:button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>