<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!doctype html>
<html lang="en">

<head>

<title>Students information</title>

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
	<div class="container">
		<div style="background-color: #222222 " class="jumbotron">
		<div style="color: white">
			<h1 >COGNI-FOUNDATION SCHOLARSHIP</h1>
			<p>YOU DREAM WE BUILD</p>
			<h3>Admin Page</h3>
		</div>
	</div>
	</div>
	<hr>

		<div style="margin-top: 10px" class="form-group">
			<div  class="col-sm-6 controls">
			<a style="background-color:#525151" href="${pageContext.request.contextPath}/" class="btn btn-primary">Back to Home</a>
			</div>
		</div>
	
	<div>

		<div id="loginbox" style="margin-top: 50px;margin-left:25px;"
			class="mainbox col-sm-11 col-sm-offset-2 col-sm-11 col-sm-offset-2">

			<div class="panel panel-primary">

				<div style="background-color: #3d3c3c " class="panel-heading">
					<div class="panel-title">view Students details</div>
				</div>

				<div style="padding-top: 30px" class="panel-body">
					<div class="container">
						<h2>Students Information</h2>
						<p>Student table define all information of table</p>
						<table class="table table-hover">
							<thead>
							<tr>
								<th>User Name</th>
								<th>Status</th>
								<th>View</th>
								</tr>
							</thead>

							<!-- loop over and print our customers -->
							<c:forEach var="tempPinfo" items="${Pinfo}">

								<!-- construct an update link with customer id -->
								<c:url var="updatelink" value="/system/studentApprov">
									<c:param name="userName" value="${tempPinfo.userName}"></c:param>
								</c:url>
								<tbody>
									<tr>
										
										<td>${tempPinfo.userName}</td>
										<td>
										<c:if test="${tempPinfo.status=='Approve'}">
										<div class="alert alert-success">
										<strong>${tempPinfo.status}</strong>
										</div>
										</c:if>
										
										<c:if test="${tempPinfo.status=='panding'}">
										<div class="alert alert-warning">
										<strong>Panding</strong>
										</div>
										</c:if>
										
										<c:if test="${tempPinfo.status=='Rejected'}">
										<div class="alert alert-danger">
										<strong>${tempPinfo.status}</strong>
										</div>
										</c:if>
										
										
										</td>
										<td>
											<!-- update customer link --> <a href="${updatelink}"><button
													type="button" class="btn">View</button></a>
										</td>
									</tr>
								</tbody>
							</c:forEach>

						</table>


					</div>

				</div>

			</div>

		</div>
	</div>
	
</body>
</html>






