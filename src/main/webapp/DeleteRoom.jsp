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
background-color: #f44336;
	color: white;
	padding: 14px 20px;
	margin-left: 10%;
  	margin-right:10%;
	border: none;
	cursor: pointer;
	width: 80%;
}

</style>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="background-color:#F5F5F5">
<%
	String tid= request.getParameter("tid");
	String tno= request.getParameter("tno");
	String capacity= request.getParameter("capacity");
	String price= request.getParameter("price");
%>
<br><br><br><br>
<center>
<h1>Confirm Delete</h1>
</center>
<div class="card" style="margin-left: 5%; height: 500px; float: center; margin-right: 5%;background-color: #FFFFFF;border: 3px solid #f1f1f1;">
			<div class="container">
	<form method="post" action="romDel">
	<br>
		<label style="margin-left: 10%;"><b>Type ID</b></label><br>
		<br><input type="text" name="tid" value="<%=tid%>" readonly><br><br>
	<label style="margin-left: 10%;"><b>Type Number</b></label><br>	
		<br><input type="text" name="tno" value="<%=tno%>" readonly><br><br>
	<label style="margin-left: 10%;"><b>Capacity</b></label><br>		
		<br><input type="text" name="capacity" value="<%=capacity%>" readonly><br><br>
	<label style="margin-left: 10%;"><b>Price</b></label><br>		
		<br><input type="text" name="price" value="<%=price%>" readonly><br><br>
		<br> <input type="submit" name="log" value="Delete" class="sub"> 
	</form>
	</div>
	</div>
</body>
</html>