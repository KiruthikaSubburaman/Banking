<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add transaction form</title>
<style>
body {
	background-image:
		url("https://media.istockphoto.com/vectors/widescreen-abstract-financial-chart-with-uptrend-line-graph-and-on-vector-id1156644488?k=20&m=1156644488&s=612x612&w=0&h=t4hyZNSbM34W1Wo62Pi2SGu1cfTKkV8PhWUYjvvM9vE=");
	height: 768px;
	width: 1366px;
	background-position: center top;
	background-repeat: no-repeat;
	background-size: cover;
	position: relative;
}
</style>
</head>
<body>
	<div id="root">
		<div id="form" align="center">
			<form:form action="addtransactiondetails" method="post"
				modelAttribute="addtransaction">
				<div>
					<label for="accountNumber">Account Number</label>
					<div>
						<form:select path="accountNumber">
							<c:forEach var="alltrans" items="${allaccountno}">
								<form:option value="${alltrans.accountNumber}"
									label="${alltrans.accountNumber}" />
							</c:forEach>
						</form:select>
					</div>
				</div>
				<div>
					<label for="transactionNumber">Transaction Number</label>
					<div>
						<form:input path="transactionNumber" />
					</div>
				</div>
				<div>
					<label for="transactionDate">Transaction Date</label>
					<div>
						<form:input path="transactionDate" type="date" />
					</div>
				</div>
				<div>
					<label for="transactionType">Transaction Type</label>
					<div>
						<form:select path="transactionType">
                            <form:option value="Deposit">Deposit</form:option>
                            <form:option value="Withdraw">Withdraw</form:option>
                        </form:select>
					</div>
				</div>
				<div>
					<label for="depositedAmount">Deposited Amount</label>
					<div>
						<form:input path="depositedAmount" />
					</div>
				</div>
				<div>
					<label for="withdrawalAmount">Withdrawal Amount</label>
					<div>
						<form:input path="withdrawalAmount" />
					</div>
				</div>
				<div>
					<form:button>Add Transaction Details</form:button>
				</div>
			</form:form>
		</div>
	</div>
	</div>
</body>
</html>