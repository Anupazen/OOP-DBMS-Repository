<%@ page import="com.*"%>
<%@ page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Room Booking page</title>

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

	<%
	roomview rv = new roomview();
	List<rooms> ro = rv.readItems();
	request.setAttribute("roomdetails", ro);
	%>
	<div id="header" style="z-index: 1;">
		<ul class="nav-list">
			<li><a href="MainPage.jsp" class="nav-link" style="color: black">Home</a>
			</li>
			<li><a href="#" class="nav-link" style="color: black">Rooms</a>
			</li>
			<li><a href="DineInCustomer.jsp" class="nav-link" style="color: black">Dine-In</a>
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

	<div id="carouselExampleControls" class="carousel slide"
		data-ride="carousel">
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img class="d-block w-100" src="hotelg.jpg" alt="First slide">
			</div>
			<div class="carousel-item">
				<img class="d-block w-100" src="image/roomnew2.jpg" alt="Second slide">
			</div>
			<div class="carousel-item">
				<img class="d-block w-100" src="image/hotel5.jpg" alt="Third slide">
			</div>
		</div>
		<a class="carousel-control-prev" href="#carouselExampleControls"
			role="button" data-slide="prev"> <span
			class="carousel-control-prev-icon" aria-hidden="true"></span> <span
			class="sr-only">Previous</span>
		</a> <a class="carousel-control-next" href="#carouselExampleControls"
			role="button" data-slide="next"> <span
			class="carousel-control-next-icon" aria-hidden="true"></span> <span
			class="sr-only">Next</span>
		</a>
	</div>
	<div style="background-color: black; height: 40px; width: 100%">
	</div>
	<div
		style="background-color: white; height: 100px; width: 100%; border-color: gray">
	</div>
	<br>
	<br>

	<div class="card"
		style="margin-left: 13.2%; height: 190px; float: center; margin-right: 50%; background-color: #36454F">

		<div class="container" style="color: white;">
		
			<h2 style="font-size: 300%">Information</h2> <br>
			<h4 style="font-size: 150%">Dear Valued Guest,</h4> 
			<br>
			<h6 style="font-size: 120%">
			Greetings from
			7 NEST HOTELS! Due to the high occupancy rates, kindly note that
			driver’s accommodation cannot be guaranteed. It will be offered based
			on availability, depending on the date and time of arrival due to
			limited accommodation options available. Our sincere apologies for
			any inconvenience. Your kind understanding is much appreciated. Warm
			Regards, The Management
			</h6>
			</div>

	</div>
	<br>
	<br>
	<br>



	<c:forEach var="apps" items="${roomdetails}">

		<div class="card"
			style="margin-left: 10%; height: 190px; float: center; margin-right: 10%">
			<div class="container">

				<!--style="overflow-y:scroll"-->

				<div style="width: 30%; height: 160px; float: left">
					<img src="image/room4.avif" alt="Trulli" width="80%" height="190"
						style="padding: 10px 10px 10px 0px">
				</div>
				<div style="margin-left: 30%; height: 190px">

					<c:set var="tid" value="${apps.tid}" />
					<c:set var="tno" value="${apps.t_no}" />
					<c:set var="capacity" value="${apps.capacity}" />
					<c:set var="price" value="${apps.price}" />


					<c:url value="ConfirmBook.jsp" var="confirm">

						<c:param name="tid" value="${tid}" />
						<c:param name="tno" value="${tno}" />
						<c:param name="capacity" value="${capacity}" />
						<c:param name="price" value="${price}" />

					</c:url>
					<table id="customers">
						<tr>
							<th>
								<h2 style="text-decoration: underline; font-family:Garamond">
									${apps.tid}</h2> <br>
							<br>


								<h3 style="color: #A9A9A9; font-family:Verdana">${apps.capacity} Persons 1 Night</h3>

								<h3 style="color: #A9A9A9 ; font-family:Verdana">room number:- ${apps.t_no}</h3>
							</th>

							<th>
								<div class="vl"></div> <br>
							<br>
								<div style="left: 80%;">
									<h3
										style="color: green; font-family: Lucida Console; font-weight: 900;">Rs
										${apps.price} /=</h3>
									<a href="${confirm}"> <input type="button"
										href="ConfirmBook.jsp" value="Book" id="BtnConfirm"
										style="font-family: Monaco">
									</a>
								</div>
							</th>
						</tr>
					</table>
				</div>
			</div>
		</div>
		<br>
	</c:forEach>












	<!-- Code from here -->

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
				<br> <a href="#"><i class="icon ion-social-instagram"></i></a><a
					href="#"><i class="icon ion-social-snapchat"></i></a><a href="#"><i
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