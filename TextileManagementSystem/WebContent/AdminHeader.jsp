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
<link href="styles/Admin_header_styles.css" rel="stylesheet" type="text/css">
</head>
<body>

<!-- <div class="Y_AdminHeader_Container"> -->
<!-- 		<a href="index.jsp"><img src="images/logo.jpg" alt="Logo" class="Y_logo"></a> -->
<!-- 		<h1 class="Y_header">World of Fashion</h1> -->
<!-- 		<br><br><br><br><br><br><br> -->
<!-- 	</div> -->
	
<!-- 	<hr class="Y_hr"> -->
	
	<div class="Y_navbar">
	<form action="LogOut_Servlet" method="post">
  		<a href="AdminHome.jsp">Home</a>
  	
  		<div class="Y_dropdown">
    		<button class="Y_dropbtn">Product</button>
    			<div class="Y_dropdown-content">
      				<a href="ProductAdd_Admin.jsp">Add New Product</a>
      				<a href="ProductList_Admin.jsp">View Products</a>
      				<a href="ProductList_Admin.jsp">Search Products</a>
    			</div>
  		</div> 
  
  		<div class="Y_dropdown">
    		<button class="Y_dropbtn">Report</button>
    			<div class="Y_dropdown-content">
      				<a href="ProductList_Admin.jsp">Product</a>
    			</div>
  		</div>
  
  		<a href="ChangePassword.jsp">Change Password</a>
  		<a><input type="submit" value="Log Out"></a>
  	</form>
</div>

</body>
</html>