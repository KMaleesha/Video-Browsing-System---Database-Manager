<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
      
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Personal Details</title>

	
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
								<li><a href="login.html">Login</a></li>
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
						<h2>-YOU ARE-</h2><br><br>
	<table align="center">					
	<c:forEach var ="u1" items = "${userDetails}">
	
	<c:set var="id" value="${u1.user_id}"/>
	<c:set var="name" value="${u1.name}"/>
	<c:set var="username" value="${u1.userName}"/>
	<c:set var="phone" value="${u1.telNo}"/>
	<c:set var="email" value="${u1.email}"/>
	<c:set var="password" value="${u1.password}"/>
	<c:set var="birthd" value="${u1.birthD}"/>
		
	<tr>
		<td style="text-align:center">User ID&nbsp;&nbsp;&nbsp;&nbsp;</td>
		<td style="text-align:center">${u1.user_id}</td>
	</tr>
	<tr>
		<td style="text-align:center">User's Name&nbsp;&nbsp;&nbsp;&nbsp;</td>
		<td style="text-align:center">${u1.name}</td>
	</tr>
	<tr>
		<td style="text-align:center">User Name&nbsp;&nbsp;&nbsp;&nbsp;</td>
		<td style="text-align:center">${u1.userName}</td>
	</tr>
	<tr>
		<td style="text-align:center">User contact No&nbsp;&nbsp;&nbsp;&nbsp;</td>
		<td style="text-align:center">${u1.email}</td>
	</tr>
	<tr>
		<td style="text-align:center">User Email&nbsp;&nbsp;&nbsp;&nbsp;</td>
		<td style="text-align:center">${u1.telNo}</td>
	</tr>
	<tr>
		<td style="text-align:center">User Password&nbsp;&nbsp;&nbsp;&nbsp;</td>
		<td style="text-align:center">${u1.password}</td>
	</tr>
	<tr>
		<td style="text-align:center">User's BirthDay&nbsp;&nbsp;&nbsp;&nbsp;</td>
		<td style="text-align:center">${u1.birthD}</td>
	</tr>	
	</c:forEach>
</table><br><br>

<c:url value= "videologin.jsp" var ="logv" >
	<c:param name="id" value = "${id}" ></c:param>
	<c:param name="videocode" value ="${videocode}"></c:param>
	<c:param name="videoname" value ="${videoname}"></c:param>
	<c:param name="description" value ="${description}"></c:param>
	<c:param name ="date" value ="${date}"></c:param>
	<c:param name="path" value ="${path}"></c:param>
	<c:param name="thumbnail" value ="${thumbnail}"></c:param>
	
</c:url>

<a href = "${logv}">
<input type = "submit" name ="submit" value ="     YES     ">
</a>
&nbsp;&nbsp;&nbsp;&nbsp;	

<c:url value= "login.jsp" var ="logu" >
	<c:param name="id" value = "${id}" ></c:param>
	<c:param name="videocode" value ="${videocode}"></c:param>
	<c:param name="videoname" value ="${videoname}"></c:param>
	<c:param name="description" value ="${description}"></c:param>
	<c:param name ="date" value ="${date}"></c:param>
	<c:param name="path" value ="${path}"></c:param>
	<c:param name="thumbnail" value ="${thumbnail}"></c:param>
	
</c:url>

<a href = "${logu}">
<input type = "submit" name ="submit" value ="     NO     ">
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