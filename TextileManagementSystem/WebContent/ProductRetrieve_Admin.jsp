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
<title>Retrieve Product</title>
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
			margin-left: 20%;
			margin-right: 20%;
			width: 60%;
		}
		
		hr {
			width: 55%;
		}
		.hrStyles {
			width: 55%;
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
		table {
			width: 100%;
		}
		table, th, td {
  			border: 1px solid black;
  			border-collapse: collapse;
		}
		th, td {
 		 	padding: 10px;
 		 	text-align: center;
		}
		.form-inline input[type=text] {
	 	 	padding: 10px;
  			background-color: #ffc4e1;
  			border: 1px solid #ddd;
  			width: 10%;
  			margin-left: 20%;
  			margin-right: 20%;
		}
		input[type=text]:focus {
			background-color: #d5eaff;
			outline: none;
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

	<jsp:include page="AdminHeader.jsp"></jsp:include>

	<h1>Product Search Results</h1>
	<hr class="hrStyles"> <br>
		
		
	<form class="form-inline" action="ProductGetById_AdminServlet" method="post">

		<input type="text" name="id" placeholder="Search Product By ID">
	
	</form>
	
	<br>
	
	<% 
		Product p1 = (Product) request.getAttribute("p1");
		String ID = p1.getProductID();
	%>
	
		<div class="container">
	
 			<table border="1">
				<tr><th>Product ID</th>		<th>Product Name</th>
					<th>Category</th>		<th>Qty</th>
					<th>Size</th>			<th>Price</th>
					<th>Re-Order Level</th>	<th>Edit</th>
					<th>Delete</th>
				</tr>
	
				<tr>  
					<td> <%=p1.getProductID() %></td>
					<td> <%=p1.getProductName() %></td>
					<td> <%=p1.getProductCategory() %></td>
					<td> <%=p1.getProductQty() %></td>
					<td> <%=p1.getProductSize() %></td>
					<td> <%=p1.getProductPrice() %></td>
					<td> <%=p1.getProductReOrderLevel() %></td>
				
					<td><a href="ProductGetById_AdminServlet?id=<%= p1.getProductID() %>">Edit</a></td>
					<td><a href="ProductDelete_AdminServlet?id=<%= p1.getProductID() %>">Delete</a></td>
				</tr>
			
			</table>
		</div>

	
</body>
</html>