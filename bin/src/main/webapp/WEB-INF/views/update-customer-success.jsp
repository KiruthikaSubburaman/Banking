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
<button style="font-size: 12px; background-color: #e7e7e7; color: black; float:left;" onclick="history.back()">Go Back</button>
     <div align="center">
        <h2>Customer Details Updated Successfully!</h2>
    <span>Customer Name</span><span>${updatecustomer.customerName}</span><br/>
	<span>FatherName</span><span>${updatecustomer.fatherName}</span><br/>
	<span>Gender</span><span>${updatecustomer.gender}</span><br/>
	<span>DOB</span><span>${updatecustomer.dob}</span><br/>
	<span>Address</span><span>${updatecustomer.address}</span><br/>
	<span>State</span><span>${updatecustomer.state}</span><br/>
	<span>Pin Code</span><span>${updatecustomer.pinCode}</span><br/>
	<span>Nationality</span><span>${updatecustomer.nationality}</span><br/>
	<span>Aadhar Number</span><span>${updatecustomer.aadharNumber}</span><br/>
	<span>MobileNumber</span><span>${updatecustomer.mobileNumber}</span><br/>
	<span>Email</span><span>${updatecustomer.email}</span><br/>
	
	
	
	</div>
</body>
</html>