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
<button style="font-size: 12px; background-color: #e7e7e7; color:black; float:left; margin-top:-46px;" onclick="history.back()">Go Back</button>
    <form action="/customeraccount/findcustomeraccount" method="get">
        <div id="form" class="box">
    <table>
    <tbody>
        <tr>
        <td><label>Enter Account Number</label></td> 
      <td>  <input type="text"
            placeholder="Account Number" name="accountNumber"> </td>
            </tr>
 <tr>   <td>  <input type='submit' value="find" name="submit"></td>
      </tr>
      </tbody>
      </table>
      </div>
    </form>
</body>
</html>