<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Add transaction form</title>
<style><%@include file="/WEB-INF/css/style.css"%></style>
<!-- <script type="text/javascript">
function calculation(type) {
	if(type=="deposit"){
    var depositAmount = document.getElementById("depositAmount").value;
    document.getElementById("currentBalance").value += depositAmount;
    return parseInt(depositAmount);
	}else if(type=="withdraw"){}
    var depositAmount = document.getElementById("withdrawalAmount").value;
    document.getElementById("currentBalance").value -= depositAmount;
    return parseInt(depositAmount);
}
return 5;
}
</script> -->
</head>
<body>
<button style="font-size: 12px; background-color: #e7e7e7; color: black; float:left; margin-top:-46px;" onclick="history.back()">Go Back</button>
			<form:form action="addtransactiondetails" method="post"
				modelAttribute="addtransaction">
				<div id="form" class="box">
				<table>
				<tbody>
				<tr>
				<td>	<label for="accountNumber">Account Number</label> </td>
					
					<td>	<form:input path="accountNumber" /> </td>
			</tr>
					<tr>
					<td><label for="transactionDate">Transaction Date</label> </td>
					
					<td>	<form:input path="transactionDate" type="date" /> </td>
				</tr>
					<tr>
				<td>	<label for="transactionType">Transaction Type</label> </td>
					<td>	<form:select path="transactionType" class="text-box">
                            <form:option value="deposit">Deposit</form:option>
                            <form:option value="withdraw">Withdraw</form:option>
                        </form:select> </td>
				</tr>
					<tr>
					<td><label for="depositAmount">Deposit Amount</label> </td>
					
					<td>	<form:input path="depositAmount" onchange='calculation("deposit")' /></td>
				</tr>
					<tr>
				<td>	<label for="withdrawalAmount">Withdrawal Amount</label> </td>
					<td>
						<form:input path="withdrawalAmount" onchange='calculation("withdraw")'/>
					</td>
				</tr>
					<tr>
				<td>	<label for="minimumBalance">Minimum Balance</label> </td>
					<td>
						<form:input path="minimumBalance" value="3000" readonly="readonly" />
					</td>
				</tr>

					 
				</tbody>
				</table>
					<form:button>Add transaction</form:button>
				</div>
			</form:form>
			<%-- <div>Current balance: ${balance}</div> --%>
</body>
</html>