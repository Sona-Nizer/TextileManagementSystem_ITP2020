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
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
	.container {
			background-color:#008040;
			width:100%;
			height:150px;
		}

	h1 {
			color: white;
			font-size: 50px;
			font-family: "Times New Roman", Times, serif;
			text-align: left;
			margin-top: 0px;
			float: left;
			margin: 0px;
			line-height: 130px;
			padding-left: 10%;
		}
	hr {
			width: 100%;
		}

	.navbar {
  			overflow: hidden;
  			background-color: #333;
		}

	.navbar a {
  			float: left;
  			font-size: 20px;
  			font-family: "Times New Roman", Times, serif;
  			color: white;
  			text-align: center;
 		 	padding: 12px 90px;
  			text-decoration: none;
		}

	.navbar a:hover {
  			background-color: #d5eaff;
  			color: black;
  			font-weight: bold;
  			font-family: "Times New Roman", Times, serif;
  			padding: 15px 90px;
  			font-size: 20px;
		}
	.logout {
  			overflow: hidden;
  			background-color: #333;
  			color: white;
  			display: inline-block;
  			font-size: 20px;
  			border: none;
  			padding: 2px 10px;
		}
	.logout a {
			float: left;
  			font-size: 20px;
  			font-family: "Times New Roman", Times, serif;
  			color: white;
  			text-align: center;
  			text-decoration: none;
  			border: none;
  			padding: 2px 10px;
		}
	.logout:hover {
  			background-color: #d5eaff;
  			color: black;
  			font-weight: bold;
  			font-family: "Times New Roman", Times, serif;
  			font-size: 20px;
  			border: none;
  			padding: 2px 10px;
		}
</style>
</head>
<body>

<div class="container">
			<h1>World of Fashion</h1>
			<br><br><br><br>
	</div>
	
		<hr>


	<div class="navbar">
	<form action="LogOut_Servlet" method="post">
  		<a href="HomePage_AfterLogin">Home</a>
  		<a href="#">About Us</a>
  		<a href="ContactUs.jsp">Contact Us</a>
  		<a href="#">Register</a>
  		<a href="#"><i class="w3-xxlarge fa fa-shopping-cart"></i></a>
  		<a><input type="submit" value="Log Out" class="logout"></a>
  	</form>
  	</div>
  	
</body>
</html>