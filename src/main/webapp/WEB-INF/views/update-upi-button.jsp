<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Button</title>
<style><%@include file="/WEB-INF/css/style.css"%></style>
</head>
<body>
<button style="font-size: 12px; background-color: #e7e7e7; color: black; float:left;" onclick="history.back()">Go Back</button>
	<br>
	<form action="/upicreation/updateupiform" method="get">
	<div class="form">
	 <div class="box">
    <table>
    <caption></caption>		
			<tr>
			<th></th>
			</tr>
    <tbody>
        <tr>
        <td><label>Enter Account Number</label></td> 
      <td>  <input type="text"
            placeholder="Account Number" name="accountNumber"> </td>
            </tr>
 <tr>   <td>  <input type='submit' value="change pin" name="submit"></td>
      </tr>
      </tbody>
      </table>
      </div>
      </div>
      <div class="message">${result}</div>
    </form>
</body>
</html>