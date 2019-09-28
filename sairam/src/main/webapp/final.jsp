<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>RESULT</title>
</head>
<body>
<jsp:useBean id="reg" class="register.Registration"></jsp:useBean>
<%
String s1 = request.getParameter("firstname");
String s2 = request.getParameter("lastname");
String s3 = request.getParameter("email");
String s4 = request.getParameter("password");
int res = reg.fun(s1,s2,s3,s4);
if(res==1) out.print("Successfully Register");
else out.print("User already exists.");
%>
