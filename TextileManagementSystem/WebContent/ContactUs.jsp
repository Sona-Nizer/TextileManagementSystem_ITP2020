<!-- 
	ITP 2020 Textile Management System
	
	@author V. Yahdhursheika - IT19186948

 -->
 
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Contact Us</title>
<style>
/*
 * ITP 2020 Textile Management System
 * 
 * @author V. Yahdhursheika - IT19186948
 */
 
body {
	background: url("images/img10.jpg");     
    background-repeat: no-repeat;
    background-attachment: fixed;
    background-size: 100% 100%;
	}
h1 {
	color: #00009b;
	text-align: center;
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
		
input[type=text], input[type=password], input[type=number], input[type=email], textarea
	{
		width: 90%;
		font-family: Arial, Helevetica, sans-serif;
		padding: 15px;
		display: inline-block;
		border: none;
		background: #e6e6ff;
	}
.inputHidden {
		width: 90%;
		font-family: Arial, Helevetica, sans-serif;
		padding: 15px;
		display: inline-block;
		border: none;
		background: #e6e6ff;
		color: red;
	}
input[type=text]:focus, input[type=password]:focus, input[type=number]:focus, input[type=email]:focus, textarea:focus {
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
	}
#reset {
		background-color: red;
		color: white;
		padding: 16px 20px;
		border: none;
	}
#reset:hover {
		background-color: pink;
	}
</style>
</head>
<body>

<form action=Contact_AddServlet method="post">
	
	<h1>Contact Us</h1>
	<hr>
	
	<div class="container">
	
	<label>Enter Name</label><br><br>
	<input type="text" name="name" placeholder="Enter Name" required><br><br><br>
	
	<label>Enter Email</label><br><br>
	<input type="email" name="email" placeholder="Enter Email" required><br><br><br>
	
	<label>Enter Subject</label><br><br>
	<input type="text" name="subject" placeholder="Enter Subject"><br><br><br>
	
	<label>Type Your Message</label><br><br>
	<textarea name="message" class="txt" rows="5" cols="95" 
		placeholder="Type Your Response Here" required>
		</textarea><br><br><br>
	
	<input type="submit" value="Submit Response" id="submit">
	<input type="reset" value="Reset Form" id="reset">
		
	</div>
	</form>
	
</body>
</html>