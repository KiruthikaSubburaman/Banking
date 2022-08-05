<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Find Customer By Aadhar Number</title>
</head>
<body>
	<div id="root">
		<div id="form" align="center">
			<form:form action="" method="get" modelAttribute="findcustomer">
				<div>
					<label for="customerName">Customer Name</label>
					<div>
						<form:input path="customerName" readonly="true" />
					</div>
				</div>
				<div>
					<label for="fatherName">Father Name</label>
					<div>
						<form:input path="fatherName" readonly="true" />
					</div>
				</div>
				<div>
					<label for="gender">Gender</label>
					<div>
						<form:input path="gender" readonly="true" />
					</div>
				</div>
				<div>
					<label for="dob">DOB</label>
					<div>
						<form:input path="dob" readonly="true" />
					</div>
				</div>
				<div>
					<label for="address">Address</label>
					<div>
						<form:input path="address" readonly="true" />
					</div>
				</div>
				<div>
					<label for="nationality">Nationality</label>
					<div>
						<form:input path="nationality" readonly="true" />
					</div>
				</div>
				<div>
					<label for="aadharNumber">Aadhar Number</label>
					<div>
						<form:input path="aadharNumber" readonly="true" />
					</div>
					<div>
						<div>
							<label for="mobileNumber">Mobile Number</label>
							<div>
								<form:input path="mobileNumber" readonly="true" />
							</div>
						</div>
						<div>
							<label for="email">Email</label>
							<div>
								<form:input path="email" readonly="true" />
							</div>
						</div>
						<div>
							<label for="accountStatus">Account Status</label>
							<div>
								<form:input path="accountStatus" readonly="true" />
							</div>
						</div>

					</div>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>