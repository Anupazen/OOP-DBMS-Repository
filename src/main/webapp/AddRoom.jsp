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
background-color: #9ACD32;
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

</style>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="background-color:#F5F5F5">
<br><br>
<center>
	<h1>Add Room</h1>
</center>	
	<div class="card" style="margin-left: 5%; height: 570px; float: center; margin-right: 5%;background-color: #FFFFFF;border: 3px solid #f1f1f1;">
			<div class="container">
	<form method="post" action="romAdd">

		<script type="text/javascript">
			function EnableDisableTextBox() {
				var chkYes = document.getElementById("chkYes");
				var txtPassportNumber = document
						.getElementById("txtPassportNumber");
				txtPassportNumber.disabled = chkYes.checked ? false : true;
				if (!txtPassportNumber.disabled) {
					txtPassportNumber.focus();
				}

				var chkYes = document.getElementById("chkYes");
				var tid = document.getElementById("tid");
				tid.disabled = chkYes.checked ? true : false;
				if (!tid.disabled) {
					tid.focus();
				}
			}
		</script>
		<br><br>
		<span style="margin-left: 10%;">Add a New type ?</span> <label for="chkYes"> <input
			type="radio" id="chkYes" name="chkPassPort"
			onclick="EnableDisableTextBox()" /> No
		</label> <label for="chkNo"> <input type="radio" id="chkNo"
			name="chkPassPort" onclick="EnableDisableTextBox()" /> Yes
		</label>
		<hr style="margin-left: 10%;margin-right: 10%"/>
		<span style="margin-left: 10%;">Type ID</span><br><br><select name="tid" id="txtPassportNumber" required>
			<option value="Deluxe Suite">Deluxe Suite</option>
			<option value="Luxury Suite">Luxury Suite</option>
			<option value="FR">Quad Room</option>
			<option value="Quad Room">Quad Room Deluxe</option>
			<option value="Quad Room Normal">Quad Room Normal</option>
			<option value="Single Room">Single Room</option>
			<option value="Suite">Suite</option>
			<option value="Triple Room">Triple Room</option>
		</select> <br> <br>
		
		
		<input type="text" name="tid" placeholder="Enter a Type ID" id="tid" required><br> <br>
		<input type="text" name="tno" placeholder="Enter a Type Number" required><br>
		<br>
		<input type="text" name="capacity" placeholder="Capacity" required><br>
		<br>
		<input type="text" name="price" placeholder="Price" required><br>
		<br> 
		<input type="submit" name="log" value="Save" class="sub"> <br><br>
		<input type="reset" name="reset" value="Reset" class="rst">
	</form>
	</div>
	</div>


</body>
</html>