<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Find transactions By Account Number</title>
<style><%@include file="/WEB-INF/css/style.css"%></style>
</head>
<body>
<button style="font-size: 12px; background-color: #e7e7e7; color: black; float:left;" onclick="history.back()">Go Back</button>
		<div class="form">
		 <div class="box">
			<form:form action="" method="get" modelAttribute="findtransaction">
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
						<form:input path="transactionType" />
					</div>
				</div>
				<div>
					<label for="depositAmount">Deposit Amount</label>
					<div>
						<form:input path="depositAmount" />
					</div>
				</div>
				<div>
					<label for="withdrawalAmount">Withdrawal Amount</label>
					<div>
						<form:input path="withdrawalAmount" />
					</div>
				</div>
				<div>
					<label for="minimumBalance">Minimum Balance</label>
					<div>
						<form:input path="minimumBalance" value="3000" readonly="readonly" />
					</div>
				</div>

				<div>
					<label for="currentBalance">CurrentBalance</label>
					<div>
						<form:input path="currentBalance" />
					</div>

				</div>
				
			</form:form>
			
		</div>
	</div>
	
</body>
</html>