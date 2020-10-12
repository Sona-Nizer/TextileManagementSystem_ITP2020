<!-- 
	ITP 2020 Textile Management System
	
	@author V. Yahdhursheika - IT19186948

 -->
 
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.itp.model.*" %>
<%@ page import="com.itp.service.*" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<style>
body {
	background: url("images/img3.jpg");     
    background-repeat: no-repeat;
    background-attachment: fixed;
    background-size: 100% 100%;
	}

	h1 {
	color: white;
	text-align: center;
	font-size: 30px;
	}
	
	.container {
			padding: 16px;
			background-color: white;
			margin-left: 25%;
			margin-right: 25%;
		}
		
		hr {
			width: 55%;
		}
		.hrStyles {
			width: 55%;
		}
		
	input[type=text], input[type=password], input[type=number], input[type=email]
	{
			width: 90%;
			font-family: Arial, Helevetica, sans-serif;
			padding: 15px;
			display: inline-block;
			border: none;
			background: #e6e6ff;
	}

	input[type=text]:focus, input[type=password]:focus, input[type=number]:focus, 
		input[type=email]:focus {
			background-color: #d5eaff;
			outline: none;
	}
		.select {
			width: 95%;
			font-family: Arial, Helevetica, sans-serif;
			padding: 15px;
			display: inline-block;
			border: none;
			background: #e6e6ff;
		}
		.select:focus {
			background-color: #d5eaff;
			outline: none;
		}
		#submit {
			background-color: blue;
			color: white;
			padding: 16px 20px;
			border: none;
		}
		#submit:hover {
			background-color: pink;
			outline: none;
		}
		#reset {
			background-color: red;
			color: white;
			padding: 16px 20px;
			border: none;
		}
		#reset:hover {
			background-color: pink;
			outline: none;
		}
</style>
</head>
<body>

<h1>Login</h1>
	<hr>
	
	<div class="container">
	<form action="Login_Servlet" method="post">
	
		<label>Enter User Email</label><br><br>
		<input type="email" name="email" placeholder="Enter User Email" required><br><br><br>
		
		<label>Enter Password</label><br><br>
		<input type="password" name="password" placeholder="Enter Password" required><br><br><br>
		
		<label>Select User Type</label><br><br>
		<select class="select" name="userType" required>
				<option value="customer">Customer</option>
				<option value="supplier">Supplier</option>
				<option value="admin">Admin</option>
		</select><br><br><br>
		
		<input type="submit" value="Log In" id="submit">

	</form>
	</div>
</body>
</html>