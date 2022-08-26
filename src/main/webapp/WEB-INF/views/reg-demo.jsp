<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en-us">
<head>
<meta charset="UTF-8">
<title>Responsive Registration Form</title>
<style><%@include file="/WEB-INF/css/regdemo.css"%></style>
<script type="text/javascript">
	function SaveStudentDetails() {
		validateControls();
	}
	var gender;
	var specialization = [];
	function validateControls() {
		//FirstName
		var fname = document.getElementById("fname")
		if (fname.value == "") {
			window.alert("please enter your first name");
			fname.focus();
			return false;
		}
		//LastName
		var lname = document.getElementById("lname")
		if (lname.value == "") {
			window.alert("please enter your last name");
			lname.focus();
			return false;
		}
		//Email
		var email = document.getElementById("email")
		if (email.value == "") {
			window.alert("please enter your valid email Id");
			email.focus();
			return false;
		}
		//Mobile
		var mobile = document.getElementById("mobile")
		if (mobile.value == "") {
			window.alert("please enter your 10 digits mobile no.");
			mobile.focus();
			return false;
		}
		//Gender   
		gender = document.querySelector('input[name="gender"]:checked');
		if (gender === null) {
			window.alert("Gender required!");
			gender.focus();
			return false;
		}
		//Dob
		var dob = document.getElementById("dob")
		if (dob.value == "") {
			window.alert("please enter your Date of Birth");
			dob.focus();
			return false;
		}
		//Address
		var address = document.getElementById("address")
		if (address.value == "") {
			window.alert("please enter your address details");
			address.focus();
			return false;
		}
		//City
		var city = document.getElementById("city")
		if (city.value == "") {
			window.alert("please enter your city name");
			city.focus();
			return false;
		}
		// Pin
		var pin = document.getElementById("pin")
		if (pin.value == "") {
			window.alert("please enter your 6 digits Area PIN");
			pin.focus();
			return false;
		}
		// State
		var state = document.getElementById("state")
		if (state.value == "") {
			window.alert("please enter your state name");
			state.focus();
			return false;
		}
		//Qualification
		var qualification = document.getElementById("qualification")
		if (qualification.selectedIndex < 1) {
			window.alert("please choose your qualification");
			qualification.focus();
			return false;
		}
		// Specialization

		var specializationArray = document
				.getElementsByClassName('specialization');
		for (var i = 0; specializationArray[i]; ++i) {
			if (specializationArray[i].checked) {
				specialization.push(specializationArray[i].value);
			}
		}
		if (specialization == "") {
			alert("Specialization required!");
			return false;
		}
		// Password
		var password = document.getElementById("password")
		if (password.value == "") {
			window.alert("please enter your password");
			password.focus();
			return false;
		}

		getControlValues();

	}
</script>
</head>

<body>
<!-- 	<form:form action="addcustomer" method="post" modelAttribute="addcustomer"> -->
		<h1>Student Registaration Form</h1>
		<div class="container">
			<div class="row">
				<div class="col-10">
					<label for="fname">First Name:</label>
				</div>
				<div class="col-90">
					<input type="text" id="fname" name="firstname"
						placeholder="Enter your first name">
				</div>
			</div>
			<div class="row">
				<div class="col-10">
					<label for="lname">Last Name:</label>
				</div>
				<div class="col-90">
					<input type="text" id="lname" name="lastname"
						placeholder="Enter your last name">
				</div>
			</div>
			<div class="row">
				<div class="col-10">
					<label for="email">Email:</label>
				</div>
				<div class="col-90">
					<input type="email" id="email" name="email"
						placeholder="it should contain @,.">
				</div>
			</div>
			<div class="row">
				<div class="col-10">
					<label for="mobile">Mobile:</label>
				</div>
				<div class="col-90">
					<input type="tel" id="mobile" name="mobile"
						placeholder="only 10 digits are allowed">
				</div>
			</div>
			<div class="row">
				<div class="col-10">
					<label for="gender" required>Gender:</label>
				</div>
				<div class="col-90">
					<input type="radio" id="male" name="gender" value="male" />Male <input
						type="radio" id="female" name="gender" value="female" />Female
				</div>
			</div>
			<div class="row">
				<div class="col-10">
					<label for="dob">Date Of Birth:</label>
				</div>
				<div class="col-90">
					<input type="Date" id="dob" name="dob">
				</div>
			</div>
			<div class="row">
				<div class="col-10">
					<label for="address">Address:</label>
				</div>
				<div class="col-90">
					<textarea name="address" id="address" cols="30" rows="10"></textarea>
				</div>
			</div>
			<div class="row">
				<div class="col-10">
					<label for="city">City:</label>
				</div>
				<div class="col-90">
					<input type="text" id="city" name="city" maxlength="10">
				</div>
			</div>
			<div class="row">
				<div class="col-10">
					<label for="pincode">Area PIN:</label>
				</div>
				<div class="col-90">
					<input type="number" id="pin" name="pin" maxlength="6">
				</div>
			</div>
			<div class="row">
				<div class="col-10">
					<label for="state">State:</label>
				</div>
				<div class="col-90">
					<input type="text" id="state" name="state">
				</div>
			</div>
			<div class="row">
				<div class="col-10">
					<label for="qualification" required>Qualification:</label>
				</div>
				<div class="col-90">
					<select name="qualification" id="qualification">
						<option value=" ">Select Qualification:</option>
						<option value="Graduation">Graduation</option>
						<option value="BTech.">BTech.</option>
						<option value="MTech.">MTech.</option>
						<option value="MCA">MCA</option>
						<option value="BCA">BCA</option>
					</select>
				</div>
			</div>
			<div class="row">
				<div class="col-10">
					<label for="specialization">Specialization:</label>
				</div>
				<div class="col-90">
					<input type="checkbox" class="specialization" id="cs"
						name="specialization[]" value="Computer Science">Computer
					Science<br /> <input type="checkbox" class="specialization" id="it"
						name="specialization[]" value="Information Technology">Information
					Technology<br /> <input type="checkbox" class="specialization"
						id="ca" name="specialization[]" value="Computer Architecture">Computer
					Architecture<br /> <input type="checkbox" class="specialization"
						id="tc" name="specialization[]" value="Tele Communication">Tele
					Communication<br />
				</div>
			</div>
			<div class="row">
				<div class="col-10">
					<label for="password">Password:</label>
				</div>
				<div class="col-90">
					<input type="password" id="password" name="password" maxlength="8">
				</div>
			</div>
			<div class="row">
				<input type="submit" value="Registered"
					onclick="SaveStudentDetails()">
			</div>
		</div>
	</form:form>
</body>
</html>