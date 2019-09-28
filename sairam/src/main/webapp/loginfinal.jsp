<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>login</title>
</head>
<body>
<jsp:useBean id="use" class="register.Login"></jsp:useBean>

	<% 
	String s1 = request.getParameter("email");
	String s2 = request.getParameter("pwd");
	
	boolean row = use.show(s1,s2);
	if(row==true) out.print("Successfully Logged in");
	else out.print("Check your credentials");
	%>
</body>

<!--	<c:if test="${row == true }">
	<h1> Home</h1>
</c:if>
<c:if test="${row == false }">
	<h1>Register</h1>
	<a href="index.jsp" style="text-decoration:none">click</a>
</c:if>	-->
</html>