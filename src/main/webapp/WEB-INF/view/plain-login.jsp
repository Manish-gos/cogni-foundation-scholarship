<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!doctype html>
<html lang="en">

<head>

<title>Login Page</title>
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

			<div class="panel panel-info">

				<div  style="background-color: #3d3c3c " class="panel-heading">
					<div  style="color:white" class="panel-title"><strong>Sign In</strong></div>
				</div>

				<div style="padding-top: 30px" class="panel-body">

					<!-- Login Form -->
					<form:form
						action="${pageContext.request.contextPath}/authenticateTheUser"
						method="POST" class="form-horizontal">

						<!-- Place for messages: error, alert etc ... -->
						<div class="form-group">
							<div class="col-xs-15">
								<div>

									<!-- -------------------Check for login error----------------- -->

									<c:if test="${param.error != null}">

										<div class="alert alert-danger col-xs-offset-1 col-xs-10">
											Invalid username and password.</div>

									</c:if>

									<!-- --------------------checkin for logout-------------------- -->
									<c:if test="${param.logout != null}">
										<div class="alert alert-success col-xs-offset-1 col-xs-10">
											You have been logged out.</div>
									</c:if>

								</div>
							</div>
						</div>

						<!-- ---------------------------------User name------------------------------------ -->
						<div style="margin-bottom: 25px" class="input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-user"></i></span> <input type="text"
								name="username" placeholder="username" class="form-control">
						</div>

						<!-- ----------------------------------Password--------------------------------- -->
						<div style="margin-bottom: 25px" class="input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-lock"></i></span> <input type="password"
								name="password" placeholder="password" class="form-control">
						</div>

						<div class="col-auto">
							<div class="form-check mb-2">
								<input class="form-check-input" type="checkbox"
									id="autoSizingCheck"> <label class="form-check-label"
									for="autoSizingCheck"> Remember me </label>
							</div>
						</div>

						<!-- -----------------------------------Login/Submit Button------------------------------ -->
						<div style="margin-top: 10px" class="form-group">
							<div class="col-sm-6 controls">
								<button type="submit" class="btn btn-success">Login</button>
							</div>
						</div >
						
						
					</form:form>
				</div>
			</div>
		</div>
	</div>
	
</body>
</html>