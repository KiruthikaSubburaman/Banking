<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Account and Upi</title>
<style><%@include file="/WEB-INF/css/style.css"%>
.table-size{
border:2px;
width:100;
cellpadding:2px;}
</style>

</head>
<body>
<button style="font-size: 12px; background-color: #e7e7e7; color: black; float:left;" onclick="history.back()">Go Back</button>
	<div id="root">
		<div id="form">
		 <div class="box">
		<table class="table-size">
		<caption></caption>		
			<tr>
			<th></th>
			</tr>
			<form:form action="" method="post" modelAttribute="customeraccount">
				<div>
					<label for="aadharNumber">Aadhar Number</label>
					<div>
						<form:input path="aadharNumber" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="accountNumber">Account Number</label>
					<div>
						<form:input path="accountNumber" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="accountType">Account Type</label>
					<div>
						<form:input path="accountType" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="dateOfOpening">Date Of Opening</label>
					<div>
						<form:input path="dateOfOpening" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="accountStatus">Account Status</label>
					<div>
						<form:input path="accountStatus" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="minimumBalance">Minimum Balance</label>
					<div>
						<form:input path="minimumBalance" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="currentBalance">CurrentBalance</label>
					<div>
						<form:input path="currentBalance" readonly="true"/>
					</div>
				</div>
			</form:form>
			</table>
		</div>
	</div>
	<div id="root">
		<div id="form">
			<form:form action="" method="post" modelAttribute="upilist">
				<div>
					<label for="accountNumber">Account Number</label>
					<div>
						<form:input path="accountNumber" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="createNewPIN">Create New PIN</label>
					<div>
						<form:input path="createNewPIN" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="pinCreatedDate">pinCreatedDate</label>
					<div>
						<form:input path="pinCreatedDate" readonly="true"/>
					</div>
				</div>
			</form:form>
		</div>
		</div>
	</div>
</body>
</html>
