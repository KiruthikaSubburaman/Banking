<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Customer</title>
<style><%@include file="/WEB-INF/css/success.css"%>

div{
text-align:center
}</style>
</head>
<body>
<button style="font-size: 12px; background-color: #e7e7e7; color: black; float:left;" onclick="history.back()">Go Back</button>
	<div>
		<h2>Customer Account Updated Successfully!</h2>
		<span>Aadhar Number</span><span>${updatecustomeraccount.aadharNumber}</span><br />
		<span>Account Number</span><span>${updatecustomeraccount.accountNumber}</span><br />
		<span>Account Type</span><span>${updatecustomeraccount.accountType}</span><br />
		<span>Date Of Opening</span><span>${updatecustomeraccount.dateOfOpening}</span><br />

		
	</div>
</body>
</html>