<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer Login Form</title>
<style>
body {
	background-image:
		url("https://media.istockphoto.com/vectors/widescreen-abstract-financial-chart-with-uptrend-line-graph-and-on-vector-id1156644488?k=20&m=1156644488&s=612x612&w=0&h=t4hyZNSbM34W1Wo62Pi2SGu1cfTKkV8PhWUYjvvM9vE=");
	height: 768px;
	width: 1366px;
	background-position: center top;
	background-repeat: no-repeat;
	background-size: cover;
	position: relative;
}
</style>
</head>
<body>
    <div id="root">
        <div id="form" align="center">
            <form:form action="customerlogin" method="post"
                modelAttribute="login">
                <h1>Customer Login</h1>
                <table>
                    <tr>
                        <td><label for="email">Email :</label></td>
                        <td><form:input path="email" placeholder="email"/></td>
                    </tr>
                    <tr>
                        <td><label for="aadharNumber">Aadhar Number :</label></td>
                        <td><form:input path="aadharNumber" placeholder="Password"
                                type="password" title="It should be Number Format"
                 pattern="^[0-9]+$" required="true"/></td>
                    </tr>
                </table>
                <div>
                    <tr>
                        <td><form:button>Sign In</form:button></td>
                        <td><form:button>
                                <a href="/customer/addcustomerform">Sign Up</a>
                            </form:button></td>
                    </tr>
                </div>
            </form:form>
        </div>
    </div>
</body>
</html>