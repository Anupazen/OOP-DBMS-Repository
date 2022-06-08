<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
.nav-link:hover {
	border-bottom: 3px solid Gold;
}
.container{
font-size:15px
}
input[type=text], input[type=date],select {
	width: 80%;
	padding: 12px 20px;
	margin-left: 10%;
  	margin-right:10%;
	display: inline-block;
	border: 1px solid #ccc;
	box-sizing: border-box;
}
.sub{
background-color: #5F9EA0;
	color: white;
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
.btncal{
background-color: #5F9EA0;
	color: white;
	padding: 14px 20px;
	margin-left: 10%;
  	margin-right:10%;
	border: none;
	cursor: pointer;
	width: 80%;
}
#demo{
font-size:20px;
font-family:Lucida Console;
color:white;
margin-left:10%
}
</style>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<meta charset="ISO-8859-1">
<title>Guest Details</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<link rel="stylesheet" href="mainpage.css">

<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Untitled</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
<link rel="stylesheet" href="assets/css/style.css">
</head>
<body>
	<%
	String tid = request.getParameter("tid");
	String tno = request.getParameter("tno");
	String capacity = request.getParameter("capacity");
	String price = request.getParameter("price");
	%>
	<script>
$(document).ready(function(){
	  $("button").click(function(){
		  var x = document.getElementById("rooms").value; 
		  var y = '<%=price%>';
				var a = parseInt(x);
				var b = parseInt(y);
				var z = a * b;
				var k="Rs ";
				var l="/=";
				var m =" Per Night for "
				var n=" Room(s)"
				document.getElementById("demo").innerHTML = k+z+l+m+a+n;
				$("p").toggle(250);
			});
		});
	</script>
	<div id="header" style="z-index: 1;">
		<ul class="nav-list" >
			<li><a href="#" class="nav-link" style="color: black">Home</a>
			</li>
			<li><a href="room.jsp" class="nav-link" style="color: black">Rooms</a>
			</li>
			<li><a href="DineInCustomer.jsp" class="nav-link" style="color: black">Dine-In</a>
			</li>
			<li><a href="About.jsp" class="nav-link" style="color: black">About</a>
			</li>
			<li><a href="staff.jsp" class="nav-link" style="color: black">Staff</a>
			</li>
		</ul>
	</div>
	<script>
		// When the user scrolls down 50px from the top of the document, resize the header's font size
		window.onscroll = function() {
			scrollFunction()
		};

		function scrollFunction() {
			if (document.body.scrollTop > 50
					|| document.documentElement.scrollTop > 50) {
				document.getElementById("header").style.fontSize = "15px";
			} else {
				document.getElementById("header").style.fontSize = "20px";
			}
		}
	</script>
	
	<br><br><br><br><br><br><br>
	<center><h1 style="font-family:Courier New"><b>Guest Details</b></h1></center>
	<br><br>
	<div class="container">
		<div class="row">
			<div class="col-sm-6" style="background-color:#F5F5DC;">
			
				<form method="post" action="ConBooking">
				<br>
					<input type="text" name="tid" value="<%=tid%>" readonly hidden>
					<input type="text" name="tno" value="<%=tno%>" readonly hidden>
					<span style="margin-left: 10%;"><b>Room Price:</b></span> <br> <input type="text" name="price" id="price"
						value="<%=price%>" readonly><br> <br><span style="margin-left: 10%;"><b>Rooms:</b></span><br> <select
						name="rooms" id="rooms" style="margin-left: 10%;" required>
						<option value="1">1</option>
						<option value="2">2</option>
						<option value="3">3</option>
						<option value="4">4</option>
					</select> <br> <br><span style="margin-left: 10%;"><b> Guest Name</b></span> <br> <input type="text"
						name="name" placeholder="Enter name" required><br> <br><span style="margin-left: 10%;"><b>Age</b>
					</span><br> <input type="text" name="Age" placeholder="Age" required><br>
					<br><span style="margin-left: 10%;"><b>Nationality</b></span> <br> <input type="text"
						name="Nationality" placeholder="Nationality" required><br>
					<br><span style="margin-left: 10%;"><b>Email</b></span> <br> <input type="text" name="Email"
						placeholder="Enter Email" required><br> <br><span style="margin-left: 10%;"><b>Check-in
					Date</b></span> <br> <input type="date" name="ciDate" required><br>

					<br><span style="margin-left: 10%;"><b>check-out Date</b></span> <br> <input type="date" name="coDate"
						required><br> <br><span style="margin-left: 10%;"><b>Estimated Arrival Time:</b></span> <select
						name="time" id="time" style="margin-left: 10%;
  	margin-right:10%;" required>
						<option value="Before 8 AM">Before 8 AM</option>
						<option value="9 AM">9 AM</option>
						<option value="11 AM">11 AM</option>
						<option value="1 PM">1 PM</option>
						<option value="After 3 PM">After 3 PM</option>
					</select> <br> <br> <br> <input type="submit" name="log"
						value="Confirm" class="sub"><br><br> <input type="reset" name="reset"
						value="Reset" style="padding: 10" class="rst">
						

				</form>
				<br><br>
			</div>
			
			<div class="col-sm-6" style="background-color:#E1C16E;">
				<br>
				<button class="btncal">Calculate Total</button>
				<br><br>
				<p id="demo"></p>
			</div>
		</div>
	</div>
<div class="footer-basic">
		<footer class="mybox">

			<div class="social">
				<br>
				<a href="#"><i class="icon ion-social-instagram"></i></a><a href="#"><i
					class="icon ion-social-snapchat"></i></a><a href="#"><i
					class="icon ion-social-twitter"></i></a><a href="#"><i
					class="icon ion-social-facebook"></i></a>
			</div>
			<ul class="list-inline">
				<li class="list-inline-item"><a href="#">Home</a></li>
				<li class="list-inline-item"><a href="#">Services</a></li>
				<li class="list-inline-item"><a href="#">About</a></li>
				<li class="list-inline-item"><a href="#">Terms</a></li>
				<li class="list-inline-item"><a href="#">Privacy Policy</a></li>
			</ul>
			<p class="copyright">Company Name © 2018</p>
			<br> <img src="footer5.png" alt="Trulli" width="100%"
				height="150">

		</footer>
	</div>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/js/bootstrap.bundle.min.js"></script>


</body>
</html>