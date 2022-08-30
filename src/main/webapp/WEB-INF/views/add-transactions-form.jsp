<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Add transaction form</title>
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
			<a>TRANSACTION FORM</a>
		</div>
	</div>
</div>
<div class="container col-md-100">
	<h4>Please fill out this form:</h4>
	<div class="card">

		<div class="card-body">
			<form:form action="addtransactiondetails" method="post"
				modelAttribute="addtransaction">
				<fieldset class="form-group">
					<legend></legend>
					<label><em class=""></em>Email :</label> <input type="text"
						class="form-control" name="email"
						placeholder="Enter Your Email ID" required="required">
				</fieldset>
				<form:errors path="email" cssClass="text-danger" />
				<fieldset class="form-group">
					<legend></legend>
					<label><em class=""></em>Account Number :</label> <input type="text"
						class="form-control" name="accountNumber"
						placeholder="Enter Your Account Number" maxlength="12" required="required">
				</fieldset>
				<form:errors path="accountNumber" cssClass="text-danger" />
				
	<fieldset class="form-group">
					<legend></legend>
					<label><em class=""></em>Transaction Date :</label> <input type="date"
						class="form-control" name="transactionDate" required="required">

				</fieldset>
				<form:errors path="transactionDate" cssClass="text-danger" />
				<fieldset class="form-group">
					<legend>
						<label><em class=""></em>Select Transaction Type :</label> <select
							class="form-control" name="transactionType">
							<option value="1" selected>---choose Transaction Type---</option>
							<option value="Deposit">Deposit</option>
							<option value="Withdraw">Withdraw</option>
						</select>
					</legend>
				</fieldset>
				<form:errors path="transactionType" cssClass="text-danger" />
			
				<fieldset class="form-group">
					<legend></legend>
					<label><em class=""></em>Deposit Amount :</label> <input type="text"
						class="form-control" name="depositAmount"
						placeholder="Enter Deposit Amount" required="required">

				</fieldset>
				<form:errors path="depositAmount" cssClass="text-danger" />
				<fieldset class="form-group">
					<legend></legend>
					<label><em class=""></em>Withdrawal Amount :</label> <input type="text"
						class="form-control" name="withdrawalAmount" placeholder="Enter Withdrawal Amount"
						required="required">

				</fieldset>
				<form:errors path="withdrawalAmount" cssClass="text-danger" />
				<fieldset class="form-group">
					<legend></legend>
					<label><em class=""></em>Minimum Balance :</label> <input type="text"
						class="form-control" name="minimumBalance"
						 value="3000" readonly="readonly">

				</fieldset>
				<form:errors path="minimumBalance" cssClass="text-danger" />
				
				<button type="submit" class="btn btn-success">Submit</button>
			</form:form>
			<br>
			<button type="submit" class="btn btn-success"
				onclick="history.back()">Go Back</button>
		</div>
	</div>
</div>
</body>
</html>

