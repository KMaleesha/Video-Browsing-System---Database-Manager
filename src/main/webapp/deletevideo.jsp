<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete video Details</title>
<!-- Description, Keywords and Author -->
		<meta name="description" content="Your description">
		<meta name="keywords" content="Your,Keywords">
		<meta name="author" content="ResponsiveWebInc">
		
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		
		<!-- Styles -->
		<!-- Bootstrap CSS -->
		<link href="css/bootstrap.min.css" rel="stylesheet">
		<!-- Font awesome CSS -->
		<link href="css/font-awesome.min.css" rel="stylesheet">		
		<!-- Custom CSS -->
		<link href="css/style.css" rel="stylesheet">
		
		<!-- Favicon -->
		<link rel="shortcut icon" href="#">
		
		<style>
body {
  background-color:#00004a; 
  background-repeat: no-repeat;
  background-attachment: fixed;  
  background-size: cover;
}
</style>
		
</head>
<body>

<div class="wrapper">
		
			<!-- header -->
			<header>
				<!-- navigation -->
				<nav class="navbar navbar-default" role="navigation">
					<div class="container">
						<!-- Brand and toggle get grouped for better mobile display -->
						<div class="navbar-header">
							<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
								<span class="sr-only">Toggle navigation</span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
							</button><br>
							<a class="navbar-brand" href="#"><img class="img-responsive" src="img/logo1.png" alt="Logo" /></a>
						</div>

						<!-- Collect the nav links, forms, and other content for toggling -->
						<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
							<ul class="nav navbar-nav navbar-right">
								<li><a href="registration.html">Signup</a></li>
								<li><a href="login.html">Login</a></li>
								<li><a href="index.html">Home</a></li>
							</ul>
						</div><!-- /.navbar-collapse -->
					</div><!-- /.container-fluid -->
				</nav>
			</header><br>	<br>
				<br>
			



	
<center><h2>-DELETE VIDEO DETAILS-</h2></center>
		<br><br>
	<br>

	<%
		String id = request.getParameter("id");
		String videocode = request.getParameter("videocode");
		String videoname = request.getParameter("videoname");
		String description = request.getParameter("description");
		String date = request.getParameter("date");
		String path = request.getParameter("path");
		String thumbnail = request.getParameter("thumbnail");
	%>

	<form action="delete" method = "post">
<table align="center">
	<tr>
		<td>Video ID&nbsp;&nbsp;&nbsp;&nbsp;</td>
		<td><input type="text" name ="vid" style="width:400px" value = "<%=id%>" readonly></td>
	</tr>
	<tr>
		<td>Video code&nbsp;&nbsp;&nbsp;&nbsp;</td>
		<td><input type="text" name ="vcode" style="width:400px" value = "<%=videocode%>" readonly></td>
	</tr>
	<tr>
		<td>Video Name&nbsp;&nbsp;&nbsp;&nbsp;</td>
		<td><input type="text" name ="vname" style="width:400px" value = "<%=videoname%>" readonly></td>
	</tr>
	<tr>
		<td>Description&nbsp;&nbsp;&nbsp;&nbsp;</td>
		<td><input type="text" name ="des" style="width:400px" value = "<%=description%>" readonly></td>
	</tr>
	<tr>
		<td>Date&nbsp;&nbsp;&nbsp;&nbsp;</td>
		<td><input type="text" name ="date" style="width:400px" value = "<%=date%>" readonly></td>
	</tr>
	<tr>	
		<td>Path&nbsp;&nbsp;&nbsp;&nbsp;</td>
		<td><input type="text" name ="pth" style="width:400px" value = "<%=path%>" readonly></td>
	</tr>
	<tr>
		<td>Thumb nail&nbsp;&nbsp;&nbsp;&nbsp;</td>
		<td><input type="text" name ="thbn" style="width:400px" value = "<%=thumbnail%>" readonly></td>
	</tr>
</table><br>	<br>

		<center><input type = "submit" name ="submit" value ="Delete Video Details" ></center>
</form>
		<br><br><br><br>
		
		
			<!-- footer -->
			<footer class="ffoot">
				<div class="container">
					<p><a href="#">Home</a> | <a href="#work">works</a> | <a href="#team">Team</a> | <a href="#contact">Contact</a></p>
					<div class="social">
						<a href="https://www.facebook.com/"><i class="fa fa-facebook"></i></a>
						<a href="https://twitter.com/login?lang=en-gb"><i class="fa fa-twitter"></i></a>
						<a href="https://dribbble.com/login"><i class="fa fa-dribbble"></i></a>
						<a href="https://www.linkedin.com/login"><i class="fa fa-linkedin"></i></a>
						<a href="https://accounts.google.com/ServiceLogin/signinchooser?ltmpl=mobNH&flowName=GlifWebSignIn&flowEntry=ServiceLogin"><i class="fa fa-google-plus"></i></a>
					</div>
					<!-- copy right -->
					<!-- This theme comes under Creative Commons Attribution 4.0 Unported. So don't remove below link back -->
					<p class="copy-right">Copyright &copy; 2021 <a href="https://www.sliit.lk/" >SLIIT</a> | Designed By : MALEESHA</a>, All rights reserved. </p>
				</div>
			</footer>

		</div>
		
		
		<!-- Javascript files -->
		<!-- jQuery -->
		<script src="js/jquery.js"></script>
		<!-- Bootstrap JS -->
		<script src="js/bootstrap.min.js"></script>
		<!-- Respond JS for IE8 -->
		<script src="js/respond.min.js"></script>
		<!-- HTML5 Support for IE -->
		<script src="js/html5shiv.js"></script>
		<!-- Custom JS -->
		<script src="js/custom.js"></script>
		
					
</body>
</html>