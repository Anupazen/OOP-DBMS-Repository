<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>MainPage</title>

<style>
.mybox {
	background-color: #F0FFFF;
	width: 100%;
	border: 2px grey;
}
.nav-link:hover {
	border-bottom: 3px solid Gold;
}

</style>

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
	<div id="header">
		<ul class="nav-list">
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

	<!-- remove this down-->

	<img src="image/front4.avif" alt="Trulli" width="100%" height="700">

	<!-- remove this up-->




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

	<!-- Remove this down -->

	<center>
		<table class="center" style="width: 600px">
			<tr>
				<th>

					<center>
						<br>
						<h1 style="font-family: Garamond">HOTELS IN SRI LANKA</h1>
						<h2 style="font-family: Georgia">7 NEST HOTELS</h2>
						<p style="font-family: Monaco">
							Revel in our histories. Chase our mysteries. Discover
							extraordinary places. Unwind in our spaces. At 7 Nest Hotels, we
							promise you are in good hands. With the largest family of hotels
							and villas across Sri Lanka, we are delighted to welcome you into
							our homes found on the mountains to the coastline, and everywhere
							else in between.<br>
							<br> <span id="dots">...</span><span id="more">Our
								legendary hospitality is one that we are truly proud of, and
								will forever remain synonymous with our name - wherever you may
								cross paths with us on your travels far and wide. Our spaces
								have also been designed to seamlessly blend the finest of Sri
								Lankan hospitality with the nature of our surroundings, creating
								atmospheres of undiscovered luxury that you will find hard to
								match. With rooms that draw you into a world of their own, and
								signature dining experiences that transport you to a world
								beyond, your stay with us is a stay to remember. No matter how
								long you choose to spend with our family, we will always welcome
								you with open arms and a tropical embrace to make you feel at
								home.<br>
							<br> Through uncharted lands or world-famous destinations,
								our eternal spirit of Sri Lankan hospitality is one that is
								refreshingly contagious, in the best way possible. For it begins
								and ends with a simple blessing bestowed upon each and every one
								of you when you set foot on our land:
							</span>
						</p>
						<button onclick="myFunction()" id="myBtn"
							style="border: none; background: none; outline: none; box-shadow: none">Read
							more</button>
					</center>
				</th>
			</tr>
		</table>
	</center>


	<!-- Remove this up-->


	<br>

	<!-- Remove this down-->


	<div style="width: 100%;">
		<div
			style="width: 30%; height: 600px; float: left; background: #353839;">
			<h1
				style="color: white; padding-left: 60px; padding-right: 60px; padding-top: 150px; font-family: Lucida Console">Make
				yourself</h1>
			<h2
				style="color: #2E8B57; padding-left: 60px; padding-right: 60px; font-family: Monaco">at
				home</h2>
			<br>
			<h4
				style="color: white; font-family: Monaco; padding-left: 60px; padding-right: 60px">We
				are a small island with big hearts. Wherever you may find yourself
				in Sri Lanka, rest easy knowing that an open door is never too far
				away.</h4>
			<br>
			<h4
				style="color: white; font-family: Monaco; padding-left: 60px; padding-right: 60px">Come
				rain or shine wherever you are in Sri Lanka, hotel deals are always
				available on our island for all seasons. Regularly refreshed, our
				special offers have been designed to give you the greatest of Sri
				Lankan hospitality at the best value.</h4>
		</div>
		<div style="margin-left: 30%; height: 600px; background: white;">
			<center>
				<img src="sl3.jpg" alt="Trulli" width="60%" height="600px">
			</center>
		</div>
	</div>


	<script>
		function myFunction() {
			var dots = document.getElementById("dots");
			var moreText = document.getElementById("more");
			var btnText = document.getElementById("myBtn");

			if (dots.style.display === "none") {
				dots.style.display = "inline";
				btnText.innerHTML = "Read more";
				moreText.style.display = "none";
			} else {
				dots.style.display = "none";
				btnText.innerHTML = "Read less";
				moreText.style.display = "inline";
			}
		}
	</script>

	<!-- Remove this up-->


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