<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Customer</title>
<style><%@include file="/WEB-INF/css/success.css"%></style>
</head>
<body>
<button style="font-size: 12px; background-color: #e7e7e7; color: black ; float:left;" onclick="history.back()">Go Back</button>
     <div align="center">
     <h2>Registration successful!</h2>
	<span>Customer Name</span><span>${addcustomer.customerName}</span><br/>
	<span>FatherName</span><span>${addcustomer.fatherName}</span><br/>
	<span>Gender</span><span>${addcustomer.gender}</span><br/>
	<span>DOB</span><span>${addcustomer.dob}</span><br/>
	<span>Address</span><span>${addcustomer.address}</span><br/>
	<span>State</span><span>${addcustomer.state}</span><br/>
	<span>Pin Code</span><span>${addcustomer.pinCode}</span><br/>
	<span>Nationality</span><span>${addcustomer.nationality}</span><br/>
	<span>Aadhar Number</span><span>${addcustomer.aadharNumber}</span><br/>
	<span>MobileNumber</span><span>${addcustomer.mobileNumber}</span><br/>
	<span>Email</span><span>${addcustomer.email}</span><br/>
	
	
	</div>
</body>
</html>