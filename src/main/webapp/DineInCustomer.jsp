<%@ page import="com.*"%>
<%@ page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Dine-In page</title>

<style>
.mybox {
	background-color: #F0FFFF;
	width: 100%;
	border: 2px grey;
}

.nav-link:hover {
	border-bottom: 3px solid Gold;
}

#customers td, #customers th {
	padding: 8px;
	width: 100%
}

#BtnConfirm {
	color: white;
	border-width: 3px;
	opacity: 0.9;
	background-color: #C5B358;
	border: none;
	width: 160px;
	height: 35px;
	font-size: 20px;
	cursor: pointer;
}

.vl {
	border-left: 1px solid #C0C0C0;
	height: 155px;
	position: absolute;
	left: 80%;
	margin-left: -3px;
	top: 7px
}
</style>

<link rel="stylesheet" href="roompage.css">

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
<body style="background-color: #F5F5F5;">


	<div id="header" style="z-index: 1;">
		<ul class="nav-list" >
			<li><a href="MainPage.jsp" class="nav-link" style="color: black">Home</a>
			</li>
			<li><a href="room.jsp" class="nav-link" style="color: black">Rooms</a>
			</li>
			<li><a href="#" class="nav-link" style="color: black">Dine-In</a>
			</li>
			<li><a href="About.jsp" class="nav-link" style="color: black">about</a>
			</li>
			<li><a href="staff.jsp" class="nav-link" style="color: black">Staff</a>
			</li>
		</ul>
	</div>
	<Br>
	<br>
	<br>
	<br>
	<br>
	<Br>
	<br>
	
	<img src="image/hotel5.jpg" alt="Trulli" width="100%" height="480">
	<div style="background-color: black; height: 40px; width: 100%">
	</div>
	<div
		style="background-color: white; height: 60px; width: 100%; border-color: gray">
	</div>
	<br>
	<br>

<%
		Dine_inView rv=new Dine_inView();
		List<Dine_in> ro= rv.readItems();
		request.setAttribute("Dine_in", ro);
%>


	<c:forEach var="apps" items="${Dine_in}">
		<div class="card"
			style="margin-left: 10%; height: 190px; float: center; margin-right: 10%">
			<div class="container">
			<!--style="overflow-y:scroll"-->

				<div style="width: 30%; height: 160px; float: left">
					<img src="hotelg.jpg" alt="Trulli" width="80%" height="190"
						style="padding: 10px 10px 10px 0px">
				</div>
				<div style="margin-left: 50%; height: 190px">
					<c:set var="PackageID" value="${apps.packageID}" />
					<c:set var="PackageName" value="${apps.packageName}" />
					<c:set var="NumberOfPeople" value="${apps.numberOfPeople}" />
					<c:set var="Price" value="${apps.price}" />
					<c:set var="Description" value="${apps.desription}" />
					
					<c:url value="Reserve.jsp" var="confirm">
						
						<c:param name="PackageID" value="${PackageID}" />
						<c:param name="PackageName" value="${PackageName}" />
						<c:param name="NumberOfPeople" value="${NumberOfPeople}" />
						<c:param name="Price" value="${Price}" />
						<c:param name="Description" value="${Description}" />

					</c:url>
					
					
					<h2 style="text-decoration: underline;font-family:Garamond">${apps.packageName}</h2><br>
					<h3 style="font-family:Verdana">Number of People:- ${apps.numberOfPeople}</h3>
					<h3 style="font-family:Verdana">Package Description:- ${apps.desription}</h3>
					<br>
	  				<h3 style="color: green; font-family: Lucida Console; font-weight: 900;">Rs ${apps.price} /=</h3>
					
					
						<a href="${confirm}"> <input type="button" class="btn btn-warning"
							href="ConfirmBook.jsp" value="Reserve" id="BtnConfirm">
						</a>
					
				</div>
			</div>
		</div>
		<br>
		<br>
	</c:forEach>


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

	<!-- footer -->
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