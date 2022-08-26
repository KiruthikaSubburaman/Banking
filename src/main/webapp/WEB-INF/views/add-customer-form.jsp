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
		<div class="form">
		<div class="box">
			<table>
				<caption></caption>		
			<tr>
			<th></th>
			</tr>
				<tbody>
					<tr>
						<td><label class="mandatory" for="customerName">Customer Name</label></td>
						<td><form:input path="customerName"
								pattern="^[A-Za-z]\\w{2,20}$" title="Name must be in letters"
								required="true" placeholder="Customer Name" /></td>
					</tr>
					<form:errors path="customerName" cssClass="text-danger" />
					<tr>
						<td><label class="mandatory" for="fatherName">Father Name</label></td>
						<td><form:input path="fatherName"
								pattern="^[A-Za-z]\\w{2,20}$" title="Name must be in letters"
								required="true" placeholder="Father Name"/></td>
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
						<td><label class="mandatory" for="dob">DOB</label></td>
						<td><form:input path="dob" type="date" /></td>
					<tr>
						<td><label class="mandatory" for="address">Address</label></td>
						<td><form:input path="address" pattern="^[A-Za-z]\\w{3,20}$"
								title="Enter valid address" required="true " placeholder="Address"/></td>
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
								maxlength="6" required="true" placeholder="Pincode"/></td>
						<form:errors path="pinCode" cssClass="text-danger" />
					<tr>
						<td><label for="nationality">Nationality</label></td>
						<td><form:input path="nationality" value="Indian"
								readonly="readonly" placeholder="Nationality"/></td>
						<form:errors path="nationality" cssClass="text-danger" />
					<tr>
						<td><label class="mandatory" for="aadharNumber">Aadhar Number</label></td>
						<td><form:input path="aadharNumber"
								pattern="^\d{4}\d{4}\d{4}$" maxlength="12"
								title=" Aadhaar must be 12 digit number" required="true" placeholder="Aadhar Number"/></td>
						<form:errors path="aadharNumber" cssClass="text-danger" />
					<tr>
						<td><label for="mobileNumber">Mobile Number</label></td>
						<td><form:input path="mobileNumber" pattern="^\\d{10}$"
								title="Mobile number must be number" maxlength="10"
								required="true"  placeholder="Mobile Number"/></td>
						<form:errors path="mobileNumber" cssClass="text-danger" />
					<tr>
						<td><label for="email">Email</label></td>
						<td><form:input path="email"
								pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\\.[a-z]{2,3}"
								title="enter valid email" required="true" placeholder="Email"/>
					</tr>
					<form:errors path="email" cssClass="text-danger" />
				</tbody>
			</table>

			<form:button>Register</form:button>
		</div>
		</div>
	</form:form>
</body>
</html>