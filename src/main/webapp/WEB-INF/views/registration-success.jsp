<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer</title>
<style type="text/css">
body {
	background-image:
		url("https://us.123rf.com/450wm/valeo5/valeo51604/valeo5160400058/54939817-empty-studio-light-gray-abstract-background-with-radial-gradient-effect-spotlights-blurred-backgroun.jpg?ver=6");
	height: 768px;
	width: 1366px;
	background-position: center top;
	background-repeat: no-repeat;
	background-size: cover;
	position: relative;
}
span{
    text-align:left;
    display:block;
    margin-left:50px;
}
</style>
</head>
<body>
     <div align="center">
     <h2>Registration successful!</h2>
	<span>Customer Name</span><span>${addcustomer.customerName}</span><br/>
	<span>FatherName</span><span>${addcustomer.fatherName}</span><br/>
	<span>Gender</span><span>${addcustomer.gender}</span><br/>
	<span>DOB</span><span>${addcustomer.dob}</span><br/>
	<span>Address</span><span>${addcustomer.address}</span><br/>
	<span>Nationality</span><span>${addcustomer.nationality}</span><br/>
	<span>Aadhar Number</span><span>${addcustomer.aadharNumber}</span><br/>
	<span>MobileNumber</span><span>${addcustomer.mobileNumber}</span><br/>
	<span>Email</span><span>${addcustomer.email}</span><br/>
	<span>Account Status</span><span>${addcustomer.accountStatus}</span><br/>
	
	 <h1>
		<button onclick="document.location='/upicreation/addupiform'">Create Account</button>
	</h1>  
	</div>
</body>
</html>