<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Add customer Account</title>
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
			<a>ACCOUNT OPENING FORM</a>
		</div>
	</div>
</div>
<div class="container col-md-100">
	<h4>Please fill out this form:</h4>
	<div class="card">

		<div class="card-body">
			<form:form action="addcustomeraccount" method="post"
				modelAttribute="addcustomeraccount">
				<fieldset class="form-group">
					<legend></legend>
					<label><em class=""></em>Email :</label> <input type="text"
						class="form-control" name="email"
						placeholder="Enter Your Email ID" required="required">
				</fieldset>
				<form:errors path="email" cssClass="text-danger" />
				<fieldset class="form-group">
					<legend></legend>
					<label><em class=""></em>Aadhar Number :</label> <input type="text"
						class="form-control" name="aadharNumber"
						placeholder="Enter Your Aadhar Number" maxlength="12"
						required="required">

				</fieldset>
				<form:errors path="aadharNumber" cssClass="text-danger" />
				<fieldset class="form-group">
					<legend></legend>
					<label><em class=""></em>Account Type :</label> <input type="text"
						class="form-control" name="accountType"
						placeholder="Enter Account Type" required="required">
				</fieldset>
				<form:errors path="accountType" cssClass="text-danger" />
				<fieldset class="form-group">
					<legend></legend>
					<label><em class=""></em>Date Of Opening :</label> <input type="date"
						class="form-control" name="dateOfOpening" required="required">

				</fieldset>
				<form:errors path="dateOfOpening" cssClass="text-danger" />
				
				
				
				<button type="submit" class="btn btn-success">Create Account</button>
			</form:form>
			<br>
			<button type="submit" class="btn btn-success"
				onclick="history.back()">Go Back</button>
		</div>
	</div>
</div>
</body>
</html>
