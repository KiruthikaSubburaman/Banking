<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Add customer</title>
<style>
<%@include file="/WEB-INF/css/style.css"%>
</style>
</head>
<body>
	<button
		style="font-size: 12px; background-color: #e7e7e7; color: black; float: left;"
		onclick="history.back()">Go Back</button>
	<form:form action="addcustomer" method="post"
		modelAttribute="addcustomer">
		<div id="form" class="box">
			<table>
				<caption></caption>		
			<tr>
			<th></th>
			</tr>
				<tbody>
					<tr>
						<td><label for="customerName">Customer Name</label></td>
						<td><form:input path="customerName"
								pattern="^[A-Za-z]\\w{2,20}$" title="Name must be in letters"
								required="true" /></td>
					</tr>
					<form:errors path="customerName" cssClass="text-danger" />
					<tr>
						<td><label for="fatherName">Father Name</label></td>
						<td><form:input path="fatherName"
								pattern="^[A-Za-z]\\w{2,20}$" title="Name must be in letters"
								required="true" /></td>
						<form:errors path="fatherName" cssClass="text-danger" />
					<tr>
						<td><label for="gender">Gender</label></td>
						<td><form:select path="gender" class="text-box">
								<form:option value="Male">Male</form:option>
								<form:option value="Female">Female</form:option>
								<form:option value="Others">Others</form:option>
							</form:select></td>
						<form:errors path="gender" cssClass="text-danger" />
					<tr>
						<td><label for="dob">DOB</label></td>
						<td><form:input path="dob" type="date" /></td>
					<tr>
						<td><label for="address">Address</label></td>
						<td><form:input path="address" pattern="^[A-Za-z]\\w{3,20}$"
								title="Enter valid address" required="true " /></td>
						<form:errors path="address" cssClass="text-danger" />
					<tr>
						<td><label for="state">State</label></td>
						<td><form:input path="state" value="TamilNadu"
								readonly="readonly" /></td>
						<form:errors path="state" cssClass="text-danger" />
					<tr>
						<td><label for="pinCode">Pin Code</label></td>
						<td><form:input path="pinCode"
								title="pincode must be in number,Mention correct pincode"
								maxlength="6" required="true" /></td>
						<form:errors path="pinCode" cssClass="text-danger" />
					<tr>
						<td><label for="nationality">Nationality</label></td>
						<td><form:input path="nationality" value="Indian"
								readonly="readonly" /></td>
						<form:errors path="nationality" cssClass="text-danger" />
					<tr>
						<td><label for="aadharNumber">Aadhar Number</label></td>
						<td><form:input path="aadharNumber"
								pattern="^\d{4}\d{4}\d{4}$" maxlength="12"
								title=" Aadhaar must be 12 digit number" /></td>
						<form:errors path="aadharNumber" cssClass="text-danger" />
					<tr>
						<td><label for="mobileNumber">Mobile Number</label></td>
						<td><form:input path="mobileNumber" pattern="^\\d{10}$"
								title="Mobile number must be number" maxlength="10"
								required="true" /></td>
						<form:errors path="mobileNumber" cssClass="text-danger" />
					<tr>
						<td><label for="email">Email</label></td>
						<td><form:input path="email"
								pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\\.[a-z]{2,3}"
								title="enter valid email" required="true" />
					</tr>
					<form:errors path="email" cssClass="text-danger" />
				</tbody>
			</table>

			<form:button>Register</form:button>
		</div>
	</form:form>
</body>
</html>