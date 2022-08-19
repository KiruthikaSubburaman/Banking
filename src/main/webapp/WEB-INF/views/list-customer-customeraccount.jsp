<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Customer and Account Details</title>
<style><%@include file="/WEB-INF/css/style.css"%>
.table-size{
border:2px;
width:100;
cellpadding:2px;}
</style>
</head>
<body>
<button style="font-size: 12px; background-color: #e7e7e7; color: black float:left;;" onclick="history.back()">Go Back</button>
	<div id="root">
		<div id="form" class="box">
			<table class="table-size">
		<caption></caption>		
			<tr>
			<th></th>
			</tr>
				<form:form action=" " method="post" modelAttribute="customer">
					<div>
						<label for="customerName">Customer Name</label>

						<form:input path="customerName" />

					</div>
					<form:errors path="customerName" cssClass="text-danger" />
					<div>
						<label for="fatherName">Father Name</label>
						<form:input path="fatherName" />
					</div>
					<form:errors path="fatherName" cssClass="text-danger" />
					<div>
						<label for="gender">Gender</label>
						<form:radiobutton path="gender" value="Male" />
						Male
						<form:radiobutton path="gender" value="Female" />
						Female
						<form:radiobutton path="gender" value="Transgender" />
						Transgender
					</div>
					<form:errors path="gender" cssClass="text-danger" />
					<div>
						<label for="dob">DOB</label>
						<form:input path="dob" type="date" />
					</div>
					<%-- <form:errors path="dob" cssClass="text-danger" /> --%>
					<div>
						<label for="address">Address</label>
						<form:input path="address" />
					</div>
					<form:errors path="address" cssClass="text-danger" />
					<div>
						<label for="state">State</label>
						<form:input path="state" value="TamilNadu" readonly="readonly" />
					</div>
					<form:errors path="state" cssClass="text-danger" value="TamilNadu"
						readonly="readonly" />
					<div>
						<label for="pinCode">Pin Code</label>
						<form:input path="pinCode" maxlength="6" />
					</div>
					<form:errors path="pinCode" cssClass="text-danger" />
					<div>
						<label for="nationality">Nationality</label>
						<form:input path="nationality" value="Indian" readonly="readonly" />
					</div>
					<form:errors path="nationality" cssClass="text-danger" />
					<div>
						<label for="aadharNumber">Aadhar Number</label>
						<form:input path="aadharNumber" maxlength="12" />
					</div>
					<form:errors path="aadharNumber" cssClass="text-danger" />
					<div>
						<label for="mobileNumber">Mobile Number</label>
						<form:input path="mobileNumber" maxlength="10" />
					</div>
					<form:errors path="mobileNumber" cssClass="text-danger" />
					<div>
						<label for="email">Email</label>
						<form:input path="email" />
					</div>
					<form:errors path="email" cssClass="text-danger" />
				</form:form>

				<div id="root">
					<div id="form">
						<form:form action=" " method="post"
							modelAttribute="customeraccount">
							<div>
								<label for="aadharNumber">AadharNumber</label>
								<div>
									<form:input path="aadharNumber" />
								</div>
							</div>
							<form:errors path="aadharNumber" cssClass="text-danger" />

							<div>
								<label for="accountType">Account Type</label>
								<div>
									<form:input path="accountType" value="savings"
										readonly="readonly" />
								</div>
							</div>
							<form:errors path="accountType" cssClass="text-danger" />
							<div>
								<label for="dateOfOpening">Date Of Opening</label>
								<div>
									<form:input path="dateOfOpening" type="date" />
								</div>
							</div>

						</form:form>
					</div>
				</div>
			</table>
		</div>
	</div>

</body>
</html>