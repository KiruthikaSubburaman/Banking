<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Button</title>
<style>
<style><%@include file="/WEB-INF/css/style.css"%></style>
</head>
<body>
<button style="font-size: 12px; background-color: #e7e7e7; color: black; float:left;" onclick="history.back()">Go Back</button>
	<br>
	<form action="/customer/updatecustomerform" method="get"
		style="text-align: center; margin-top: 5%;">
		<label>Enter Aadhar Number</label> <input type="text"
			placeholder="Aadhar Number" name="aadharNumber"> <input
			type='submit' value="Update" name="submit">
	</form>
</body>
</html>