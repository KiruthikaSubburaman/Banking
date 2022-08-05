<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer and Account Details</title>
</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action=" " method="post" modelAttribute="customer">
				<div>
					<label for="customerName">Customer Name</label>
					<div>
						<form:input path="customerName" />
					</div>
				</div>
				<div>
					<label for="fatherName">Father Name</label>
					<div>
						<form:input path="fatherName" />
					</div>
				</div>
				<div>
					<label for="gender">Gender</label>
					<div>
						<form:input path="gender" />
					</div>
				</div>
				<div>
					<label for="dob">DOB</label>
					<div>
						<form:input path="dob" />
					</div>
				</div>
				<div>
					<label for="address">Address</label>
					<div>
						<form:input path="address" />
					</div>
				</div>
				<div>
					<label for="nationality">Nationality</label>
					<div>
						<form:input path="nationality" />
					</div>
				</div>
				<div>
					<label for="aadharNumber">Aadhar Number</label>
					<div>
						<form:input path="aadharNumber" />
					</div>
				</div>
				<div>
					<label for="mobileNumber">Mobile Number</label>
					<div>
						<form:input path="mobileNumber" />
					</div>
				</div>
				<div>
					<label for="email">Email</label>
					<div>
						<form:input path="email" />
					</div>
				</div>
				<div>
					<label for="accountStatus">Account Status</label>
					<div>
						<form:input path="accountStatus" />
					</div>
				</div>
			</form:form>
		</div>
	</div>
	<div id="root">
		<div id="form">
			<form:form action=" " method="post" modelAttribute="customeraccount">
				<div>
					<label for="aadharNumber">Aadhar Number</label>
					<div>
						<form:input path="aadharNumber" />
					</div>
				</div>
				<div>
					<label for="accountNumber">Account Number</label>
					<div>
						<form:input path="accountNumber" />
					</div>
				</div>
				<div>
					<label for="accountType">Account Type</label>
					<div>
						<form:input path="accountType" />
					</div>
				</div>
				<div>
					<label for="dateOfOpening">Date Of Opening</label>
					<div>
						<form:input path="dateOfOpening" />
					</div>
				</div>
				<div>
					<label for="accountStatus">Account Status</label>
					<div>
						<form:input path="accountStatus" />
					</div>
				</div>
				<div>
					<label for="minimumBalance">Minimum Balance</label>
					<div>
						<form:input path="minimumBalance" />
					</div>
				</div>
				<div>
					<label for="currentBalance">CurrentBalance</label>
					<div>
						<form:input path="currentBalance" />
					</div>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>