<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update transaction</title>
</head>
<body>
	<div id="root">
		<div id="form" align="center">
			<form:form action="updatetransaction" method="post"
				modelAttribute="updatetransaction">

				<div>
					<label for="accountNumber">Account Number</label>
					<div>
						<form:input path="accountNumber" />
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
					<form:button>Update Transaction</form:button>
				</div>
			</form:form>
		</div>
	</div>
	</div>
</body>
</html>