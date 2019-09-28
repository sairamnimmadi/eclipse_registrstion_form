<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<head>
<title>Registration</title>
<link rel="stylesheet" type="text/css" href="registration.css">
  <script>
    function checkPassword(){
    	var password = document.forms["registration"]["password"].value;
    	var confirmpassword = document.forms["registration"]["confirmpassword"].value;
    	if(password!=confirmpassword)
        {
    		alert("Passwords did not match!!")
    		return false;
        }
    }
  </script>
</head>
<body class="body">
	<div class="center">
		<form action="final.jsp" onSubmit="return checkPassword()" class="form" name="registration"   method="get">
			<p class="registration">Register</p>
			<p class="normal">Create your account. It's free and only takes a minute.</p> <br> 
			<input class="inputuserpassword" type="text" name="firstname" placeholder="  First Name" required> 
			<input class="inputuserpassword" type="text" name="lastname" placeholder="  Last Name" required> <br> <br> 
			<input class="input1" type="email" name="email" placeholder="  Email" required> <br> <br> 
			<input class="input1" type="password" name="password" placeholder="  Password" required> <br> <br> 
			<input class="input1" type="password" name="confirmpassword" placeholder="  Confirm Password" required> <br> <br>
			<input type="checkbox" name="Terms" value="read terms" required>
			<font color="gray"> I accept the</font> <font color="green"> Terms of Use </font><font color="gray"> and</font> <font color="green">Privacy Policy</font> <br> <br> 
			<input class="inputbutton" type="submit" value="Register Now"> <br>
		</form>
		<p class="pbottom">Already have an account? <a href="login.jsp" style="text-decoration:none">Sign in</a></p>
	</div>
</body>
</html>