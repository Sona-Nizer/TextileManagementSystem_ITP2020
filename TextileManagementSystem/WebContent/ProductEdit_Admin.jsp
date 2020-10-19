<!-- 
	ITP 2020 Textile Management System
	
	@author V. Yahdhursheika - IT19186948

 -->
 
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
 <%@ page import="java.util.*" %>
 <%@ page import="com.itp.model.*" %>
 <%@ page import="com.itp.service.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Product</title>
<style>
body {
	background: url("images/Admin_BG.jpg");     
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
	p {
			width: 90%;
			font-family: Arial, Helevetica, sans-serif;
			padding: 15px;
			display: inline-block;
			border: none;
			background: #e6e6ff;
			color: red;
	}

		input[type=text]:focus, input[type=password]:focus, input[type=number]:focus {
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

	<%
		if (session.getAttribute("userEmail") == null || 
			session.getAttribute("userType").equals("customer") || 
			session.getAttribute("userType").equals("supplier")) {
			
				response.sendRedirect("Login.jsp");
		}
	%>
		
	<h1>Update Product</h1>
	<hr class="hrStyles">
	
	<jsp:include page="AdminHeader.jsp"></jsp:include>
	
	<% 
		Product p1 = (Product) request.getAttribute("p1");
		String ID = p1.getProductID();
	%>
	<div class="container">
	
	<form action="ProductEdit_AdminServlet?id=<%= ID %>" method="post">
		
		<label>Product ID</label>
		<p class="inputHidden"><%= p1.getProductID() %></p><br><br>
		
		<label>Change Product Name</label><br><br>
		<input type="text" name="name" value="<%= p1.getProductName() %>"><br><br><br>
		
		<label>Change Product Category</label><br><br>
		<select class="select" name="category">
				<option value="<%= p1.getProductCategory() %>" selected><%= p1.getProductCategory() %></option>
				<option value="Mens' wear">Men's wear</option>
				<option value="Women's wear">Women's wear</option>
				<option value="Boys' wear">Boys' wear</option>
				<option value="Girls' wear">Girls' wear</option>
				<option value="Babies' wear">Babies' wear</option>
				<option value="Essentials">Essentials</option>
		</select><br><br><br>
		
		<label>Change Product Quantity</label><br><br>
		<input type="number" name="qty" value="<%= p1.getProductQty() %>"><br><br><br>
		
		<label>Change Product Size</label><br><br>
		<input type="text" name="size" value="<%= p1.getProductSize() %>"><br><br><br>
		
		<label>Change Product Price</label><br><br>
		<input type="number" name="price" value="<%= p1.getProductPrice() %>"><br><br><br>
		
		<label>Change Product Re-Order Level</label><br><br>
		<input type="number" name="reOrderLevel" value="<%= p1.getProductReOrderLevel() %>"><br><br><br>
		
		
		<input type="submit" value="Edit Product" id="submit">
		<input type="reset" value="Reset Form" id="reset">
	
	</form>
	</div>
	
</body>
</html>