<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add customer</title>
<style type="text/css">
label {
	display: inline-block;
	width: 200px;
	margin: 5px;
	text-align: left;
}

button {
	padding: 10px;
	margin: 10px;
}

body {
	background-image: url("https://us.123rf.com/450wm/valeo5/valeo51604/valeo5160400058/54939817-empty-studio-light-gray-abstract-background-with-radial-gradient-effect-spotlights-blurred-backgroun.jpg?ver=6");
	height: 768px;
	width: 1366px;
	background-position: center top;
	background-repeat: no-repeat;
	background-size: cover;
	position: relative;
}

.text-danger {
	color: #e80c4d;
	font-size: 0.9em;
}
</style>
</head>
<body>
	<div id="root">
		<div id="form" align="center">
			<form:form action="addcustomer" method="post"
				modelAttribute="addcustomer">
				<div>
					<label for="customerName">Customer Name</label>
					<div>
						<form:input path="customerName" />
					</div>
				</div>
				<form:errors path="customerName" cssClass="text-danger" />
				<div>
					<label for="fatherName">Father Name</label>
					<div>
						<form:input path="fatherName" />
					</div>
				</div>
				<form:errors path="fatherName" cssClass="text-danger" />
				<div>
					<label for="gender">Gender</label>
					<div>
						<form:radiobutton path="gender" value="Male" />
						Male
						<form:radiobutton path="gender" value="Female" />
						Female
						<form:radiobutton path="gender" value="Transgender" />
						Transgender
					</div>
				</div>
				<form:errors path="gender" cssClass="text-danger" />
				<div>
					<label for="dob">DOB</label>
					<div>
						<form:input path="dob" type="date" />
					</div>
				</div>
				<%-- <form:errors path="dob" cssClass="text-danger" /> --%>
				<div>
					<label for="address">Address</label>
					<div>
						<form:input path="address" />
					</div>
				</div>
				<form:errors path="address" cssClass="text-danger" />
				<div>
					<label for="nationality">Nationality</label>
					<div>
						<form:input path="nationality" />
					</div>
				</div>
				<form:errors path="nationality" cssClass="text-danger" />
				<div>
					<label for="aadharNumber">Aadhar Number</label>
					<div>
						<form:input path="aadharNumber" />
					</div>
				</div>
				<form:errors path="aadharNumber" cssClass="text-danger" />
				<div>
					<label for="mobileNumber">Mobile Number</label>
					<div>
						<form:input path="mobileNumber" />
					</div>
				</div>
				<form:errors path="mobileNumber" cssClass="text-danger" />
				<div>
					<label for="email">Email</label>
					<div>
						<form:input path="email" />
					</div>
				</div>
				<form:errors path="email" cssClass="text-danger" />
				<div>
					<label for="accountStatus">Account Status</label>
					<div>
						<form:input path="accountStatus" />
					</div>
				</div>
				<form:errors path="accountStatus" cssClass="text-danger" />
				<h1>
		<button onclick="document.location='/upicreation/addupiform'">Register</button>
	</h1>  
			</form:form>
		</div>
	</div>
</body>
</html>