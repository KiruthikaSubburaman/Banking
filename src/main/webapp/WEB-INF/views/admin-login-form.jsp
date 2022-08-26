<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Welcome to AdminLogin</title>
<style><%@include file="/WEB-INF/css/logintemplate.css"%>
<%@include file="/WEB-INF/css/button.css"%>
.message1{
font-color:black;
}
</style>
</head>
<body>
<button class="button-85" role="button" onclick="history.back()" style="float: left; font-size: 15px;">Go Back</button>
    <div class="loginBox">
        <img class="user" src="https://i.ibb.co/yVGxFPR/2.png" height="100px"
            width="100px" alt="image">
        <h3>Sign in here</h3>
        <form:form action="adminuse" method="post" name="myForm">
            <div class="inputBox">
                <input type="text" id="userName" name="userName" placeholder="User Name" 
                         pattern="^[A-Za-z\s]*$" title="It should be Alphabet Only" required="true">
                     <input
                    id="userPassword" type="password" name="userPassword" 
                    placeholder="User Password" required="true">
            </div>
            <input type="submit" name="" value="Login">
        </form:form>
       
             <div class="message1">${message}</div>
        </div>

    </div>
</body>
</html>