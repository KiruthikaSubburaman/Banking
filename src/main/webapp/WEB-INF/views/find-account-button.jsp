<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Find Account</title>
<style><%@include file="/WEB-INF/css/style.css"%></style>
</head>
<body>
<button style="font-size: 12px; background-color: #e7e7e7; color: black float:left;;" onclick="history.back()">Go Back</button>
    <form action="/customeraccount/findcustomeraccount" method="get"
        style="text-align:center ;margin-top:5%;">
        <label>Enter Account Number</label> <input type="text"
            placeholder="Account Number" name="accountNumber"> 
      <input type='submit' value="Find" name="submit">
    </form>
</body>
</html>