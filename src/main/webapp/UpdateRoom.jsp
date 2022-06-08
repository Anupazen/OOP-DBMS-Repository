<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
input[type=text], input[type=password],select {
	width: 80%;
	padding: 12px 20px;
	margin-left: 10%;
  	margin-right:10%;
	display: inline-block;
	border: 1px solid #ccc;
	box-sizing: border-box;
}
.sub{
background-color: #f4ca16;
	color: black;
	padding: 14px 20px;
	margin-left: 10%;
  	margin-right:10%;
	border: none;
	cursor: pointer;
	width: 80%;
}

.rst{
	width: auto;
	color:white;
	padding: 10px 18px;
	background-color: #f44336;
	margin-left: 10%;
	border:none
}
</style>
<meta charset="ISO-8859-1">
<title>Update Room</title>
</head>
<body style="background-color:#F5F5F5">
<%
	String tid= request.getParameter("tid");
	String tno= request.getParameter("tno");
	String capacity= request.getParameter("capacity");
	String price= request.getParameter("price");
%>
<br><br>
<center>
<h1>Update Room</h1>
</center>
	<div class="card" style="margin-left: 5%; height: 540px; float: center; margin-right: 5%;background-color: #FFFFFF;border: 3px solid #f1f1f1;">
			<div class="container">
	<form method="post" action="rom"><br>
	<label style="margin-left: 10%;"><b>Type ID</b></label><br>
		<br><input type="text" name="tid" value="<%=tid%>" readonly><br><br>
	<label style="margin-left: 10%;"><b>Type Number</b></label><br>	
		<br><input type="text" name="tno" value="<%=tno%>" readonly><br><br>
	<label style="margin-left: 10%;"><b>Capacity</b></label><br>		
		<br><input type="text" name="capacity" value="<%=capacity%>" ><br><br>
	<label style="margin-left: 10%;"><b>Price</b></label><br>		
		<br><input type="text" name="price" value="<%=price%>" ><br><br>
		<br> <input type="submit" name="log" value="Update" class="sub"><br><br><input
			type="button" name="reset" value="Reset" style="padding: 10" class="rst">
	</form>
	</div>
	</div>
	
</body>
</html>