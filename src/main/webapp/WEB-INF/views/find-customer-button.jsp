<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Find Customer</title>
<style><%@include file="/WEB-INF/css/button.css"%>
.align{
margin-top: 165px;
}
</style>
</head>
<body>
<button style="font-size: 12px; background-color: #e7e7e7; color: black; float:left; margin-top:-46px;" onclick="history.back()">Go Back</button>
    <form action="/customer/findcustomer" method="get">
    <div class="align">
    <div class="form">
    
    <table>
    	<caption></caption>		
			<tr>
			<th></th>
			</tr>
    <tbody>
        <tr>
        <td><label>Enter Aadhar Number</label></td> 
      <td>  <input type="text"
            placeholder="Aadhar Number" name="aadharNumber" pattern="^\d{4}\d{4}\d{4}$" maxlength="12"
								title=" Aadhaar must be 12 digit number" required="true" > </td>
            </tr>
 <tr>   <td>  <input type='submit' value="Find" name="submit"></td>
      </tr>
      </tbody>
      </table>
      
      </div>
      <div class="message">
      ${message}
      </div>
      </div>
      
    </form>
</body>
</html>