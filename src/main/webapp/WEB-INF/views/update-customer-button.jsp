<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Button</title>
<style>
<style><%@include file="/WEB-INF/css/style.css"%></style>
</head>
<body>
<button style="font-size: 12px; background-color: #e7e7e7; color: black; float:left;" onclick="history.back()">Go Back</button>
	<br>
	<form action="/customer/updatecustomerform" method="get">
		<div id="form" class="box">
    <table>
    <tbody>
        <tr>
        <td><label>Enter Aadhar Number</label></td> 
      <td>  <input type="text"
            placeholder="Aadhar Number" name="aadharNumber"> </td>
            </tr>
 <tr>   <td>  <input type='submit' value="update" name="submit"></td>
      </tr>
      </tbody>
      </table>
      </div>
    </form>
</body>
</html>