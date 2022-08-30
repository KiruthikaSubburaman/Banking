<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Update customer</title>
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
			<a>VIEW AND EDIT YOUR DETAILS HERE</a>
		</div>
	</div>
</div>
<div class="container col-md-100">
	<h4>Note:Some fields are not editable.Visit your Branch!</h4>
	<div class="card">

		<div class="card-body">
			<form:form action="updatecustomer" method="post"
				modelAttribute="updatecustomer">
				<fieldset class="form-group">
					<legend></legend>
					<label><em class=""></em>Customer Name :</label> <form:input type="text"
						class="form-control" path="customerName"
						placeholder="Enter Your Name" required="required" />
				</fieldset>
				<form:errors path="customerName" cssClass="text-danger" />
				<fieldset class="form-group">
					<legend></legend>
					<label><em class=""></em>Father Name :</label> <form:input type="text"
						class="form-control" path="fatherName"
						placeholder="Enter Your Father Name" required="required" />

				</fieldset>
				<form:errors path="fatherName" cssClass="text-danger" />

				<fieldset class="form-group">
					<legend>
						<label><em class=""></em>Select your Gender :</label> <form:select
							class="form-control" path="gender" readonly="true">
							<option value="1" selected>---choose Gender---</option>
							<option value="Male">Male</option>
							<option value="Female">Female</option>
							<option value="Others">Others</option>
						</form:select>
					</legend>
				</fieldset>
				<form:errors path="gender" cssClass="text-danger" />
				<fieldset class="form-group">
					<legend></legend>
					<label><em class=""></em>Date Of Birth :</label> <form:input type="date"
						class="form-control" path="dob" readonly="true" />

				</fieldset>
				<form:errors path="dob" cssClass="text-danger" />
				<fieldset class="form-group">
					<legend></legend>
					<label><em class=""></em>Address :</label> <form:input type="text"
						class="form-control" path="address" />

				</fieldset>
				<form:errors path="address" cssClass="text-danger" />
				<fieldset class="form-group">
					<legend></legend>
					<label><em class=""></em>State :</label> <form:input type="text"
						class="form-control" path="state" placeholder="Enter Your State"
					readonly="true" />

				</fieldset>
				<form:errors path="state" cssClass="text-danger" />
				<fieldset class="form-group">
					<legend></legend>
					<label><em class=""></em>Pin Code :</label> <form:input type="text"
						class="form-control" path="pinCode"
						placeholder="Enter Your Pin Code" maxlength="6"
						readonly="true" />

				</fieldset>
				<form:errors path="pinCode" cssClass="text-danger" />
				<fieldset class="form-group">
					<legend></legend>
					<label><em class=""></em>Nationality :</label> <form:input type="text"
						class="form-control" path="nationality"
						placeholder="Enter Your Nationality" readonly="true" />

				</fieldset>
				<form:errors path="nationality" cssClass="text-danger" />
				<fieldset class="form-group">
					<legend></legend>
					<label><em class=""></em>Aadhar Number :</label> <form:input type="text"
						class="form-control" path="aadharNumber"
						placeholder="Enter Your Aadhar Number" maxlength="12"
						readonly="true" />

				</fieldset>
				<form:errors path="aadharNumber" cssClass="text-danger" />
				<fieldset class="form-group">
					<legend></legend>
					<label><em class=""></em>Mobile Number :</label> <form:input type="text"
						class="form-control" path="mobileNumber"
						placeholder="Enter Your Mobile Number" maxlength="10"
						required="required" />

				</fieldset>
				<form:errors path="mobileNumber" cssClass="text-danger" />
				<fieldset class="form-group">
					<legend></legend>
					<label><em class=""></em>Email :</label> <form:input type="text"
						class="form-control" path="email"
						placeholder="Enter Your Email ID" required="required" />

				</fieldset>
				<form:errors path="email" cssClass="text-danger" />
				<button type="submit" class="btn btn-success">Update</button>
			</form:form>
			<div class="message">${result}</div>
			<br>
			<button type="submit" class="btn btn-success"
				onclick="history.back()">Go Back</button>
		</div>
	</div>
</div>
</body>
</html>
