<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="em">
<head>
<meta charset="ISO-8859-1">
<title>Account and Transactions</title>
<style><%@include file="/WEB-INF/css/button.css"%></style>
</head>
<body>
<button style="font-size: 12px; background-color: #e7e7e7; color: black ; float:left;" onclick="history.back()">Go Back</button>
		<div id="form">
		<table class="styled-table">
		<caption></caption>
				<form:form action="getaccounttransactions" method="post"
					modelAttribute="accountdetails">
					<div>
						<label for="aadharNumber">AadharNumber</label>
						<div>
							<form:input path="aadharNumber" />
						</div>
					</div>
					<form:errors path="aadharNumber" cssClass="text-danger" />

					<div>
						<label for="accountType">Account Type</label>
						<div>
							<form:input path="accountType" value="savings"
								readonly="readonly" />
						</div>
					</div>
					<form:errors path="accountType" cssClass="text-danger" />
					<div>
						<label for="dateOfOpening">Date Of Opening</label>
						<div>
							<form:input path="dateOfOpening" type="date" />
						</div>
					</div>
				</form:form>
				</table>
				</div>
				</div>
				<div id="root">
					<table class="styled-table">
					<caption></caption>
						<thead>
							<tr>
								<th>Account Number</th>
								<th>Transaction Number</th>
								<th>Transaction Date</th>
								<th>Transaction Type</th>
								<th>Deposit Amount</th>
								<th>Withdrawal Amount</th>
								<th>Minimum Balance</th>
								<th>Current Balance</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="transaction" items="${transactionlist}">
								<tr>
									<td>${transaction.accountNumber}</td>
									<td>${transaction.transactionNumber}</td>
									<td>${transaction.transactionDate}</td>
									<td>${transaction.transactionType}</td>
									<td>${transaction.depositAmount}</td>
									<td>${transaction.withdrawalAmount}</td>
									<td>${transaction.minimumBalance}</td>
									<td>${transaction.currentBalance}</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
</body>
</html>