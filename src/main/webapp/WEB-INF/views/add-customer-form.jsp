<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add customer</title>
</head>
<body>
    <div id="root">
        <div id="form">
            <form:form action="addcustomer" method="post" modelAttribute="addcustomer">
            <div>
                <label for="customerName">Customer Name</label>
                <div>
                    <form:input path="customerName"/>
                </div>
            </div>
            <div>
                <label for="fatherName">Father Name</label>
                <div>
                    <form:input path="fatherName"/>
                </div>
            </div>
            <div>
                <label for="gender">Gender</label>
                <div>
                    <form:input path="gender"/>
                </div>
            </div>
            <div>
                <label for="dob">DOB</label>
                <div>
                    <form:input path="dob"/>
                </div>
            </div>
            <div>
                <label for="address">Address</label>
                <div>
                    <form:input path="address"/>
                </div>
            </div>
            <div>
                <label for="nationality">Nationality</label>
                <div>
                    <form:input path="nationality"/>
                </div>
            </div>
            <div>
                <label for="aadharNumber">Aadhar Number</label>
                <div>
                    <form:input path="aadharNumber"/>
                </div>
                <div>
                <label for="mobileNumber">Mobile Number</label>
                <div>
                    <form:input path="mobileNumber"/>
                </div>
            </div>
            <div>
                <label for="email">Email</label>
                <div>
                    <form:input path="email"/>
                </div>
            </div>
            <div>
                <label for="accountStatus">Account Status</label>
                <div>
                    <form:input path="accountStatus"/>
                </div>
            </div>
                <div>
                            <form:button>Add New Customer</form:button>
                        </div>
            </form:form>
</div>
    </div>
    </div>
</body>
</html>