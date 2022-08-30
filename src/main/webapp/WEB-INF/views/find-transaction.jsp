<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Find transactions By Account Number</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

<style>
body, div, ul, li, p {
	font-family: arial;
}


#header {
	height: 120px;
	display: block;
	background-color: #F5F5F5;
}

#header .logo {
	background-color: DodgerBlue;
}

#header .logo a {
	padding-left: 450px;
	color: white;
	text-decoration: none;
	font-size: 30px;
}
/** Navigation **/
#navigation {
	display: inline-block;
	list-style: none;
	line-height: 50px;
	margin: 0;
	padding-left: 20;
}

#navigation ul {
	display: inline-block;
	list-style: none;
	margin: 0;
	padding: 0;
}

#navigation li {
	float: left;
	width: 180px;
	text-align: right;
}

#navigation li a {
	color: #616161;
	font-size: 20px;
	text-decoration: none;
}

#navigation li a:hover {
	font-size: 20px;
	color: #212121;
}

#navigation li.active a {
	transition: 900ms;
	color: #fff;
	padding: 12px;
	background-color: transparent;
	font-size: 20px;
	border: 2px solid white;
	border-radius: 10px;
}
.card{
    background-color: #b3d7ff;
}
</style>

</head>

<div id="header">
	<div>
		<div class="logo">
			<a>Transaction</a>
		</div>
	</div>
</div>
<div class="container col-md-100">
	<h4>Please Take Note Of Your Transaction Number Here!</h4>
	<div class="card">

		<div class="card-body">
			<form:form action="" method="post"
				modelAttribute="findtransaction">
				<fieldset class="form-group">
					<legend></legend>
					<label><em class=""></em>Account Number :</label> <form:input type="text"
						class="form-control" path="accountNumber" readonly="true" />


				</fieldset>
				<fieldset class="form-group">
					<legend></legend>
					<label><em class=""></em>Transaction Number :</label> <form:input type="text"
						class="form-control" path="transactionNumber"
						readonly="true" />

				</fieldset>
				<fieldset class="form-group">
					<legend></legend>
					<label><em class=""></em>Transaction Date :</label> <form:input type="date"
						class="form-control" path="transactionDate" readonly="true" />

				</fieldset>
				<form:errors path="transactionDate" cssClass="text-danger" />
				<fieldset class="form-group">
					<legend></legend>
					<label><em class=""></em>Transaction Type :</label> <form:input type="text"
						class="form-control" path="transactionType" readonly="true" />
				</fieldset>
				<form:errors path="transactionType" cssClass="text-danger" />
				<fieldset class="form-group">
					<legend></legend>
					<label><em class=""></em>Deposit Amount :</label> <form:input type="text"
						class="form-control" path="depositAmount" readonly="true" />

				</fieldset>
				<fieldset class="form-group">
					<legend></legend>
					<label><em class=""></em>Withdrawal Amount :</label> <form:input type="text"
						class="form-control" path="withdrawalAmount" readonly="true" />

				</fieldset>
				<fieldset class="form-group">
					<legend></legend>
					<label><em class=""></em>Minimum Balance :</label> <form:input type="text"
						class="form-control" path="minimumBalance" readonly="true" />

				</fieldset>
				
				<fieldset class="form-group">
					<legend></legend>
					<label><em class=""></em>Current Balance :</label> <form:input type="text"
						class="form-control" path="currentBalance" readonly="true" />

				</fieldset>
				
				
			</form:form>
			<br>
			<button type="submit" class="btn btn-success"
				onclick="document.location='/customer/customerindex'">Back To Login</button>
		</div>
	</div>
</div>
</body>
</html>

<%-- <style><%@include file="/WEB-INF/css/style.css"%></style>
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
</html> --%>