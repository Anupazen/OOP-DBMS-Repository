<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Room page</title>

<style>
.mybox {
  background-color:#F0FFFF;
  width: 100%;
  border: 2px grey;
}
</style>

<link rel="stylesheet" href="roompage.css">

 <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Untitled</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
    <link rel="stylesheet" href="assets/css/style.css">
    
</head>
<body>
<div id="header">
		<ul class="nav-list">
                    <li>
                        <a href="index.html" class="nav-link" style="color:black">Home</a>
                    </li>
                    <li>
                        <a href="#" class="nav-link" style="color:black">Rooms</a>
                    </li>
                    <li>
                        <a href="#" class="nav-link" style="color:black">Dine-In</a>
                    </li>
                    <li>
                        <a href="#" class="nav-link" style="color:black">about</a>
                    </li>
                    <li>
                        <a href="#" class="nav-link" style="color:black">Staff</a>
                    </li>
        </ul>
</div>
 <br><br><br><br><br><br><br><br>




<!-- Code from here -->









<center>
<h1 id="a1">Room page</h1>
<h1 id="mystyle">hello world</h1>
</center>












<!-- Code from here -->

<script>
// When the user scrolls down 50px from the top of the document, resize the header's font size
window.onscroll = function() {scrollFunction()};

function scrollFunction() {
  if (document.body.scrollTop > 50 || document.documentElement.scrollTop > 50) {
    document.getElementById("header").style.fontSize = "15px";
  } else {
    document.getElementById("header").style.fontSize = "20px";
  }
}
</script>

<!-- footer -->
<div class="footer-basic">
        <footer class="mybox">
        
            <div class="social" ><br><a href="#"><i class="icon ion-social-instagram"></i></a><a href="#"><i class="icon ion-social-snapchat"></i></a><a href="#"><i class="icon ion-social-twitter"></i></a><a href="#"><i class="icon ion-social-facebook"></i></a></div>
            <ul class="list-inline">
                <li class="list-inline-item"><a href="#">Home</a></li>
                <li class="list-inline-item"><a href="#">Services</a></li>
                <li class="list-inline-item"><a href="#">About</a></li>
                <li class="list-inline-item"><a href="#">Terms</a></li>
                <li class="list-inline-item"><a href="#">Privacy Policy</a></li>
            </ul>
            <p class="copyright">Company Name © 2018</p><br>
            <img src="footer5.png" alt="Trulli" width="100%" height="150">
            
        </footer>
    </div>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/js/bootstrap.bundle.min.js"></script>




</body>
</html>