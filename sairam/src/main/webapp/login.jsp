<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>LOGIN PAGE</title>
	<style>

            body{
                /*padding-top: 2cm;*/
                background-color:lightslategray;
                overflow: hidden;
    /*padding:500px ;*/
                
            }
            .color{
                color: green
            }
            .middle{
                padding-right: 19%
            }
            h2{
                font-size:250%;
                padding-top:5%;
                text-align:center;
            }
            #mail{
                margin-top: 4%;
                margin-right: -23.5%;
                font-size : 120%;
                width: 95%;
            }
            #pwd{
                margin-top: 4%;
                margin-right: -23.5%;
                font-size : 120%;
                width: 95%;
            }
            #rnb{
                margin-top:1%;
                font-size : 100%;
                width: 95%;
                padding: 2%;
                background-color: green;
                color: white;
            }
            .regbg{ 
                background-color: white;
                padding:2%;
                border:2px solid black;
                width:350px;
                height:400px;
                margin-top:5%;
                margin-left: 33%;
                
            }
        </style>
</head>
<body>
	<div class = "regbg">
            <form action="loginfinal.jsp" method="post">
                <h2>-------LOGIN-------</h2>
                <input type="email" name="email" id="mail" placeholder= "username/Email"><br>
                <br></br>
                <input type="password" name="pwd" id ="pwd" placeholder = "Password"><br>
                <br></br>
                <input type= "submit"  id ="rnb" value ="LOGIN"><br>
                <br></br>
            </form>
    </div>
</body>
</html>