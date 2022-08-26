<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Home Page</title>
<style type="text/css">
<%@include file="/WEB-INF/css/tablestyle.css"%>
<%@include file="/WEB-INF/css/adminaccess.css"%>
</style>
</head>
<body>
<button class="button-85" role="button"  onclick="document.location='/home/homepage'">LOGOUT</button>
    <div class="menu">
    <div align="center"><h1>WELCOME ADMIN..</h1></div>
        <ul>    
            <li><a href="/admin/customerlist">Customer List</a></li>
            <li><a href="/admin/customeraccountlist">Customer Account List</a></li>
            <li><a href="/admin/transactionlist">Customer Transactions</a></li>
        </ul>
    </div>
</body>
</html>