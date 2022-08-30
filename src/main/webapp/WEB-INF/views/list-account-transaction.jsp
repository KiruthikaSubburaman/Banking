<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="em">
<head>
<meta charset="ISO-8859-1">
<title>Account and Transactions</title>
<style><%@include file="/WEB-INF/css/dto.css"%></style>
</head>
<body>
<div class="form">
		<table class="styled-table">
		<caption></caption>
			
			<tr>
			<th></th>
			</tr>
				<form:form action="getaccounttransactions" method="post"
					modelAttribute="accountdetails">
					<tr>
						<td><label for="email">Email</label></td>
						<td>
							<form:input path="email" readonly="true" />
						</td>
					</tr>
					<tr>
						<td><label for="aadharNumber">AadharNumber</label></td>
						<td>
							<form:input path="aadharNumber" readonly="true" />
						</td>
					</tr>
					<form:errors path="aadharNumber" cssClass="text-danger" />

					<tr>
						<td><label for="accountType">Account Type</label></td>
						<td>
							<form:input path="accountType" value="savings"
								readonly="readonly" />
						</td>
					</tr>
					<form:errors path="accountType" cssClass="text-danger" />
					<tr>
						<td><label for="dateOfOpening">Date Of Opening</label></td>
						<td>
							<form:input path="dateOfOpening" type="date" readonly="true" />
						</td>
					</tr>
				</form:form>
				</table>
				</div>
				<div id="root">
					<table class="styled-table">
					<caption></caption>
					
						<thead>
							<tr>
							    <th>Email</th>
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
								    <td>${transaction.email}</td>
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
				
				<button style="font-size: 12px; background-color: #e7e7e7; color: black; float:left;" onclick="history.back()">Go Back</button>
</body>
</html>