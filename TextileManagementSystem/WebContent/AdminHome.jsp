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
<title>Admin Dashboard</title>
<link href="styles/AdminHome_Styles.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body {
	background: url("images/adminBg.jpg");     
    background-repeat: no-repeat;
    background-attachment: fixed;
    background-size: 100% 100%;
	}

.Y_h1_welcome {
	color: #00009b;
	text-align: center;
	font-size: 40px;
	}
	.container {
			padding: 16px;
			background-color: white;
			margin-left: 25%;
			margin-right: 25%;
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
		<%
			String userName = (String) session.getAttribute("userName");
		%>
	<jsp:include page="AdminHeader.jsp"></jsp:include>
	
		<% out.print("<h1 class='Y_h1_welcome'>Welcome " + userName + "!</h1>"); %>
		
</body>
</html>