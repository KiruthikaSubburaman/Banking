<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Find Customer By Aadhar Number</title>
<style><%@include file="/WEB-INF/css/style.css"%></style>
</head>
<body>
<button style="font-size: 12px; background-color: #e7e7e7; color: black; float:left;" onclick="history.back()">Go Back</button>
			<form:form action="" method="get" modelAttribute="findcustomer">
				<div id="form" class="box">
				<table>
				<tbody>
				<tr>
					<td><label for="customerName">Customer Name</label></td>
                <td>
					<form:input path="customerName" />
                </td>
				</tr>
				<form:errors path="customerName" cssClass="text-danger" />
				<tr>
					<td><label for="fatherName">Father Name</label></td>
					<td>
					<form:input path="fatherName" />
					</td>
				</tr>
				<form:errors path="fatherName" cssClass="text-danger" />
				<tr>
					<td><label for="gender">Gender</label></td>
					<td>
					<form:select path="gender" class="text-box">
                            <form:option value="Male">Male</form:option>
                            <form:option value="Female">Female</form:option>
                            <form:option value="Others">Others</form:option>
                        </form:select>
				</tr>
				<form:errors path="gender" cssClass="text-danger" />
				<tr>
					<td><label for="dob">DOB</label></td>
					<td>
					<form:input path="dob" type="date" /></td>
				</tr>
				<%-- <form:errors path="dob" cssClass="text-danger" /> --%>
				<tr>
					<td><label for="address">Address</label></td>
					<td>
					<form:input path="address" />
					</td>
				</tr>
				<form:errors path="address" cssClass="text-danger" />
				<tr>
					<td><label for="state">State</label></td>
					<td><form:input path="state" value="TamilNadu" readonly="readonly" /></td>
				</tr>
				<form:errors path="state" cssClass="text-danger" value="TamilNadu"
					readonly="readonly" />
				<tr>
					<td><label for="pinCode">Pin Code</label></td>
					<td><form:input path="pinCode" maxlength="6" /></td>
				</tr>
				<form:errors path="pinCode" cssClass="text-danger" />
				<tr>
					<td><label for="nationality">Nationality</label></td>
					<td><form:input path="nationality" value="Indian" readonly="readonly" /></td>
				</tr>
				<form:errors path="nationality" cssClass="text-danger" />
				<tr>
					<td><label for="aadharNumber">Aadhar Number</label></td>
					<td><form:input path="aadharNumber" maxlength="12" /></td>
				</tr>
				<form:errors path="aadharNumber" cssClass="text-danger" />
				<tr>
					<td><label for="mobileNumber">Mobile Number</label></td>
					<td><form:input path="mobileNumber" maxlength="10" /></td>
				</tr>
				<form:errors path="mobileNumber" cssClass="text-danger" />
				<tr>
					<td><label for="email">Email</label></td>
					<td><form:input path="email" /></td>
				</tr>
				<form:errors path="email" cssClass="text-danger" />

</tbody>
</table>
		
				

	</div>
		</form:form>
</body>
</html>