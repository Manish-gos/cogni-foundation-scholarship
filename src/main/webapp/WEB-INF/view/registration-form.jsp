<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!doctype html>
<html lang="en">

<head>

<title>Register New User Form</title>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<style>
.error {
	color: red
}
</style>


<!-- Reference Bootstrap files -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>

<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>

<body>

<!-- -----------------Navigation bar--------------------------- -->

	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand"
					href="${pageContext.request.contextPath}/cogniHome">Cogni-Foundation</a>
			</div>

			<ul class="nav navbar-nav navbar-right">
				<li><a
					href="${pageContext.request.contextPath}/showMyLoginPage"><span
						class="glyphicon glyphicon-log-in"></span> Login</a></li>
				<li><a
					href="${pageContext.request.contextPath}/register/showRegistrationForm"><span
						class="glyphicon glyphicon-user"></span> Sign Up</a></li>
			</ul>
		</div>
	</nav>
	
	<!-- --------------------------Container box--------------------------------  -->

	<div class="container">
		<div style="background-color: #222222 " class="jumbotron">
		<div style="color: white">
			<h1 >COGNI-FOUNDATION SCHOLARSHIP</h1>
			<p>YOU DREAM WE BUILD</p>
		</div>
	</div>
	</div>
	<hr>

<!-- ------------------Registration container head------------------------ -->
	<div>

		<div id="loginbox" style="margin-top: 50px;"
			class="mainbox col-md-8 col-md-offset-2 col-md-8 col-md-offset-2">

			<div  class="panel panel-primary">

				<div style="background-color: #3d3c3c " class="panel-heading">
					<div class="panel-title"><strong>Register New User</strong></div>
				</div>

				<div style="padding-top: 30px" class="panel-body">

					<!-- -------------------Registration Form-------------------- -->
					<form:form
						action="${pageContext.request.contextPath}/register/processRegistrationForm"
						modelAttribute="crmUser" class="form-horizontal">

						<!-- Place for messages: error, alert etc ... -->
						<div class="form-group">
							<div class="col-xs-15">
								<div>

									<!-- ------------------Check for registration error------------------ -->
									<c:if test="${registrationError != null}">

										<div class="alert alert-danger col-xs-offset-1 col-xs-10">
											${registrationError}</div>

									</c:if>

								</div>
							</div>
						</div>

						<!-- -----------------------User name------------------------------- -->
						<div style="margin-bottom: 25px" class="input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-user"></i></span>

							<form:input path="username" placeholder="username"
								class="form-control" />
								<form:errors path="username" cssClass="error" />
						</div>

						<!-- ------------------------Password-------------------------------- -->
						<div style="margin-bottom: 25px" class="input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-lock"></i></span>

							<form:password path="password" placeholder="password"
								required="required" class="form-control"  />
								<form:errors path="password" cssClass="error" />
						</div>

						<!-- ---------------------------First name---------------------------- -->
						<div style="margin-bottom: 25px" class="input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-user"></i></span>

							<form:input path="firstName" placeholder="First-Name"
								class="form-control" />
								<form:errors path="firstName" cssClass="error" />
						</div>

						<!-- -----------------------------Last name---------------------------- -->
						<div style="margin-bottom: 25px" class="input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-user"></i></span>

							<form:input path="lastName" placeholder="Last-Name"
								class="form-control" />
								<form:errors path="lastName" cssClass="error" />
						</div>

						<!-- --------------------------------Email-------------------------------- -->
						<div style="margin-bottom: 25px" class="input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-envelope"></i></span>

							<form:input path="email" placeholder="Email" class="form-control" />
						    <form:errors path="email" cssClass="error" />
						</div>

						<!-- --------------------------------Phone----------------------------------- -->
						<div style="margin-bottom: 25px" class="input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-phone"></i></span>

							<form:input path="phone" placeholder="Phone" class="form-control" />
						    <form:errors path="phone" cssClass="error" />
						</div>

						<!-- -------------------------------Register Button---------------------------- -->
						<div style="margin-top: 10px" class="form-group">
							<div class="col-sm-6 controls">
								<button type="submit" class="btn btn-primary">Register</button>
							</div>
						</div>

					</form:form>

				</div>

			</div>

		</div>

	</div>

</body>
</html>