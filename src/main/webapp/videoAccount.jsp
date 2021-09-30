<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
     
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>video info</title>

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
							<ul class="nav navbar-nav navbar-right"><br>
								<li><a href="registration.html">Signup</a></li>
								<li><a href="login.html">Logout</a></li>
								<li><a href="index.html">Home</a></li>
							</ul>
						</div><!-- /.navbar-collapse -->
					</div><!-- /.container-fluid -->
				</nav>
			</header>
			
			<!-- banner -->
			
			<div class="banner">
				<div class="container">
					<!-- form content / login area -->
					<div class="login-area">
						<!-- heading -->
						<h2>-VIDEO INFORMATION-</h2><br><br>
						
						<table align="center">
						
	<c:forEach var="v1" items ="${VideoUpdate}">
	
	<c:set  var="id" value="${v1.id}"></c:set>
	<c:set  var="videocode" value="${v1.videocode}"></c:set>
	<c:set  var="videoname" value="${v1.videoname}"></c:set>
	<c:set  var="description" value="${v1.description}"></c:set>
	<c:set  var="date" value="${v1.date}"></c:set>
	<c:set  var="path" value="${v1.path}"></c:set>
	<c:set   var="thumbnail" value="${v1.thumbnail}"></c:set>	
	
	<tr>
		<td>Video Id&nbsp;&nbsp;&nbsp;&nbsp;</td>
		<td>${v1.id}</td>
	</tr>
	<tr>
		<td>Video Code&nbsp;&nbsp;&nbsp;&nbsp;</td>
		<td>${v1.videocode}</td>
	</tr>
	<tr>
		<td>Video Name&nbsp;&nbsp;&nbsp;&nbsp;</td>
		<td>${v1.videoname}</td>
	</tr>
	<tr>
		<td>Description&nbsp;&nbsp;&nbsp;&nbsp;</td>
		<td>${v1.description}</td>
	</tr>
	<tr>
		<td>Uploaded Date&nbsp;&nbsp;&nbsp;&nbsp;</td>
		<td>${v1.date}</td>
	</tr>
	<tr>
		<td>Video Path&nbsp;&nbsp;&nbsp;&nbsp;</td>
		<td>${v1.path}</td>
	</tr>
	<tr>
		<td>Thumb nail&nbsp;&nbsp;&nbsp;&nbsp;</td>
		<td>${v1.thumbnail}</td>
	</tr>	
	</c:forEach>
		
</table>

<br><br><br>

	

	<c:url value= "Updatevideo.jsp" var ="Vupdate">
	
	<c:param name="id" value ="${id}"></c:param>
	<c:param name="videocode" value ="${videocode}"></c:param>
	<c:param name="videoname" value ="${videoname}"></c:param>
	<c:param name="description" value ="${description }"></c:param>
	<c:param name ="date" value ="${date}"></c:param>
	<c:param name="path" value ="${path}"></c:param>
	<c:param name="thumbnail" value ="${thumbnail}"></c:param>
	
	</c:url>	

<a href = "${Vupdate}">
<input type ="button" name ="update" value ="Update Video">
</a>
&nbsp;&nbsp;&nbsp;&nbsp;
	
<c:url value= "deletevideo.jsp" var ="videodelete" >
	<c:param name="id" value = "${id}" ></c:param>
	<c:param name="videocode" value ="${videocode}"></c:param>
	<c:param name="videoname" value ="${videoname}"></c:param>
	<c:param name="description" value ="${description }"></c:param>
	<c:param name ="date" value ="${date}"></c:param>
	<c:param name="path" value ="${path}"></c:param>
	<c:param name="thumbnail" value ="${thumbnail}"></c:param>
	
</c:url>
<a href = "${videodelete}">
<input type = "button" name = "delete" value ="Delete Details">
</a>
&nbsp;&nbsp;&nbsp;&nbsp;


<c:url value= "userInsert.jsp" var ="insertV" >
	<c:param name="id" value = "${id}" ></c:param>
	<c:param name="videocode" value ="${videocode}"></c:param>
	<c:param name="videoname" value ="${videoname}"></c:param>
	<c:param name="description" value ="${description }"></c:param>
	<c:param name ="date" value ="${date}"></c:param>
	<c:param name="path" value ="${path}"></c:param>
	<c:param name="thumbnail" value ="${thumbnail}"></c:param>
	
</c:url>

<a href = "${insertV}">
<input type = "submit" name ="submit" value ="Insert New Video">
</a>
					</div>
				</div>
			</div>
			<!-- banner end -->
			
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