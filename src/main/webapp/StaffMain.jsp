<%@ page import="com.*"%>
<%@ page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>RoomsPage</title>

<style>
.mybox {
	background-color: #F0FFFF;
	width: 100%;
	border: 2px grey;
}

.card {
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
	transition: 0.3s;
	margin-left: auto;
	margin-right: auto;
	margin-right: auto;
}
.nav-link:hover {
	border-bottom: 3px solid Gold;
}
.card:hover {
	box-shadow: 0 8px 16px 0 rgba(0, 0, 0, 0.2);
}

.container {
	padding: 2px 16px;
}
</style>

<link rel="stylesheet" href="staffmain.css">

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
	<div id="header" style="z-index: 1;">
		<ul class="nav-list">
			<li><a href="MainPage.jsp" class="nav-link" style="color: black">Home</a>
			</li>
			<li><a href="#" class="nav-link" style="color: black">Rooms</a>
			</li>
			<li><a href="dinein.jsp" class="nav-link" style="color: black">Dine-In</a>
			</li>
			<li><a href="#" class="nav-link" style="color: black">About</a>
			</li>
			<li><a href="staff.jsp" class="nav-link" style="color: black">Staff</a>
			</li>
		</ul>
	</div>

	<img src="hotelg.jpg" alt="Trulli" width="100%" height="350">
	<br>
	<br>

	<a href="AddRoom.jsp"> <button type="button" class="btn btn-success" style="float:right;margin-right: 10%;width:160px;height:35px;font-size: 15px;">+ Add Room</button></a>
	<br>
	<br>
	<br>
	<c:forEach var="apps" items="${roomdetails}">
		<div class="card" style="margin-left: 10%; height: 190px; float: center; margin-right: 10%">
			<div class="container">
			
			<!--style="overflow-y:scroll"-->

				<div style="width: 30%; height: 160px; float: left">
					<img src="hotelg.jpg" alt="Trulli" width="80%" height="190"
						style="padding: 10px 10px 10px 0px">
				</div>
				<div style="margin-left: 30%; height: 190px">
					<c:set var="tid" value="${apps.tid}" />
					<c:set var="tno" value="${apps.t_no}" />
					<c:set var="capacity" value="${apps.capacity}" />
					<c:set var="price" value="${apps.price}" />
					<h3>room id:- ${apps.tid}</h3>
					<h3>room Price:- ${apps.price}</h3>
					<h3>room Capacity:- ${apps.capacity}</h3>
					<h3>room number:- ${apps.t_no}</h3>

					<c:url value="UpdateRoom.jsp" var="roomUpdate">

						<c:param name="tid" value="${tid}" />
						<c:param name="tno" value="${tno}" />
						<c:param name="capacity" value="${capacity}" />
						<c:param name="price" value="${price}" />

					</c:url>
					<c:url value="DeleteRoom.jsp" var="roomDelete">

						<c:param name="tid" value="${tid}" />
						<c:param name="tno" value="${tno}" />
						<c:param name="capacity" value="${capacity}" />
						<c:param name="price" value="${price}" />

					</c:url>
						<a href="${roomUpdate}"> <input type="button" class="btn btn-warning"
							href="staff.jsp" value="Update Type">
						</a>
					<a href="${roomDelete}"><button type="button" class="btn btn-danger"
						style="margin-left: 30px">Delete Type</button>
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
			<p class="copyright">Company Name � 2018</p>
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