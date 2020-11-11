<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!doctype html>
<html lang="en">

<head>

<title>Check Your Application Status</title>

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
     <!--  -----------------------------------Navigation bar--------------------------------------------- -->
	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="#">Cogni-Foundation</a>
			</div>
			<ul class="nav navbar-nav">
				<li class="active"><a
					href="${pageContext.request.contextPath}/">Home</a></li>
				<li><a
					href="${pageContext.request.contextPath}/student/personalInfo">Apply
						for Scholarship</a></li>
				<li><a
					href="${pageContext.request.contextPath}/student/viewInfoForm">View
						Application</a></li>
				<li><a
					href="${pageContext.request.contextPath}/student/viewStatus">Show
						Application Status</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">

				<li><form:form
						action="${pageContext.request.contextPath}/logout" method="POST"
						class="form-horizontal">
						<!-- Register Button -->
						<div style="margin-top: 10px" class="form-group">
							<div class="col-sm-6 controls">
								<button type="submit" style="background-color:#525151" class="btn btn-primary">Logout</button>
							</div>
							</div>
					</form:form> Logout</li>
			</ul>

		</div>
	</nav>
	
	<!-- --------------------------------- Container----------------------------------------- -->
	<div class="container">
		<div style="background-color: #222222 " class="jumbotron">
		<div style="color: white">
			<h1 >COGNI-FOUNDATION SCHOLARSHIP</h1>
			<p>YOU DREAM WE BUILD</p>
		</div>
	</div>
	</div>
	<hr>
       
							
							<div>
							<c:if test="${pInfo==null}">
							 <div class="alert alert-danger">
								<strong>You have not submited any application....!</strong>
							</div>
							</c:if>
							</div>
	<c:if test="${pInfo!=null}">
         <!--  ----------------------------Container for application status-------------------------- -->
		<div>

			<div id="loginbox" style="margin-top: 50px;"
				class="mainbox col-md-8 col-md-offset-2 col-sm-8 col-sm-offset-2">

				<div  class="panel panel-primary">

					<div style="background-color: #3d3c3c " class="panel-heading">
						<div class="panel-title">Check Your Application Status</div>
					</div>

					<div style="padding-top: 30px" class="panel-body">

						<h2>Your Application for ID:</h2>
						<h2>
							<span style="color: red">${pInfo.userName}</span>
						</h2>
						<!-- --------------------------Check and show status--------------------------------- -->
						<h2>Status is</h2>
						<c:if test="${pInfo.status=='Approve'}">
							<div class="alert alert-success">
								<strong>Approved!</strong>
							</div>
						</c:if>
						<c:if test="${pInfo.status=='Rejected'}">
							<div class="alert alert-danger">
								<strong>Rejected!</strong>
							</div>
						</c:if>
						<c:if test="${pInfo.status=='panding'}">
							<div class="alert alert-warning">
								<strong>Pending!</strong>
							</div>
						</c:if>
					</div>
				</div>
			</div>
		</div>
	</c:if>
</body>
</html>