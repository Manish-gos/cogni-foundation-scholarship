<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!doctype html>
<html lang="en">

<head>

<title>Registrarion Confirmation</title>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- Reference Bootstrap files -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>

<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>

<body>
<!-- ----------------------------------Container---------------------------- -->
	<div class="container">
		<div style="background-color: #222222 " class="jumbotron">
		<div style="color: white">
			<h1 >COGNI-FOUNDATION SCHOLARSHIP</h1>
			<p>YOU DREAM WE BUILD</p>
		</div>
	</div>
	</div>

	<div class="alert alert-success" role="alert">
		<h2>User registered successfully!</h2>
	</div>
	<hr>
<!-- -----------------------------Back to Login Page Button--------------------------- -->
<div style="margin-top: 10px" class="form-group">
			<div class="col-sm-6 controls">
			<a href="${pageContext.request.contextPath}/showMyLoginPage" class="btn btn-primary">Go to Login</a>
			</div>
		</div>
		
</body>

</html>