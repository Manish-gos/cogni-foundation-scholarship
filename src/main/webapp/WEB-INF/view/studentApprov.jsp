<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!doctype html>
<html lang="en">

<head>

<title>Students personal Info</title>

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

	<c:if test="${pInfo!=null}">

		<div>

			<div id="loginbox" style="margin-top: 50px;"
				class="mainbox col-md-8 col-md-offset-2 col-sm-8 col-sm-offset-2">

				<div class="panel panel-primary">

					<div style="background-color: #3d3c3c " class="panel-heading">
						<div class="panel-title">Check Students Information</div>
					</div>

					<div style="padding-top: 30px" class="panel-body">

						<!-- Registration Form -->
						<form:form
							action="${pageContext.request.contextPath}/student/processInfoForm"
							modelAttribute="pInfo" method="POST" class="form-horizontal">

							<!-- Place for messages: error, alert etc ... -->
							<div class="form-group">
								<div class="col-xs-15">
									<div>

										<!-- Check for registration error -->
										<c:if test="${registrationError != null}">

											<div class="alert alert-danger col-xs-offset-1 col-xs-10">
												${registrationError}</div>

										</c:if>

									</div>
								</div>
							</div>




							<!-- need to associate the data with id -->
							<!-- Students Name -->
							<div style="margin-bottom: 25px" class="input-group">
								<span class="input-group-addon">Student name</span>
								<form:input path="sName" placeholder="Father's Name"
									class="form-control" />
							</div>

							<!-- Father's Name -->
							<div style="margin-bottom: 25px" class="input-group">
								<span class="input-group-addon">Father's name</span>
								<form:input path="fName" placeholder="Father's Name"
									class="form-control" />
							</div>

							<!-- Date of Birth -->
							<div style="margin-bottom: 25px" class="input-group">
								<span class="input-group-addon">DOB</span>
								<form:input path="dob" placeholder="Date of Birth"
									class="form-control" />
							</div>

							<!-- Category -->
							<div style="margin-bottom: 25px" class="input-group">
								<span class="input-group-addon">Category</span> SC
								<form:radiobutton path="catagory" value="sc" />
								ST
								<form:radiobutton path="catagory" value="st" />
								OBC
								<form:radiobutton path="catagory" value="obc" />
								GENERAL
								<form:radiobutton path="catagory" value="general" />
							</div>

							<!-- Gender -->
							<div style="margin-bottom: 25px" class="input-group">
								<span class="input-group-addon">Category</span> Male
								<form:radiobutton path="gender" value="male" />
								Female
								<form:radiobutton path="gender" value="female" />

							</div>

							<!-- Aadhar Number -->
							<div style="margin-bottom: 25px" class="input-group">
								<span class="input-group-addon">Aadhar Number</span>
								<form:input path="aadhar_no" placeholder="Aadhar Number"
									class="form-control" />
							</div>

							<!-- Email -->
							<div style="margin-bottom: 25px" class="input-group">
								<span class="input-group-addon">Email Address</span>
								<form:input path="email" placeholder="Email Address"
									class="form-control" />

							</div>

							<!-- Phone -->
							<div style="margin-bottom: 25px" class="input-group">
								<span class="input-group-addon">Phone Number</span>
								<form:input path="phone" placeholder="Phone Number"
									class="form-control" />
							</div>

							<!-- State -->
							<div style="margin-bottom: 25px" class="input-group">
								<span class="input-group-addon">State Name</span>
								<form:input path="state" placeholder="State Name"
									class="form-control" />
							</div>

							<!-- City-->
							<div style="margin-bottom: 25px" class="input-group">
								<span class="input-group-addon">City</span>
								<form:input path="city" placeholder="City" class="form-control" />
							</div>

							<!-- pin -->
							<div style="margin-bottom: 25px" class="input-group">
								<span class="input-group-addon">Pin Code</span>
								<form:input path="pin" placeholder="Pin Code"
									class="form-control" />
							</div>
							<!-- user name -->
							<div style="margin-bottom: 25px" class="input-group">
								<span class="input-group-addon">User Name</span>
								<form:input path="userName" placeholder="User Name"
									class="form-control" />
							</div>
							<hr>
							<!--Educational information-->
							<h3>Higher Secondry School</h3>
							<!-- School Name -->
							<div style="margin-bottom: 25px" class="input-group">
								<span class="input-group-addon">School name</span>
								<form:input path="hs_school" placeholder="School's Name"
									class="form-control" />
							</div>

							<!-- Board Name -->
							<div style="margin-bottom: 25px" class="input-group">
								<span class="input-group-addon">Board name</span>
								<form:input path="hs_board" placeholder="Board Name"
									class="form-control" />
							</div>

							<!-- Marks -->
							<div style="margin-bottom: 25px" class="input-group">
								<span class="input-group-addon">Marks Obtained</span>
								<form:input path="hs_mars" placeholder="example-80"
									class="form-control" />
							</div>

							<!-- Passing year -->
							<div style="margin-bottom: 25px" class="input-group">
								<span class="input-group-addon">Year Of Passing</span>
								<form:input path="hs_year" placeholder="example-2020"
									class="form-control" />
							</div>

							<h3>Higher School</h3>
							<!-- School Name -->
							<div style="margin-bottom: 25px" class="input-group">
								<span class="input-group-addon">School name</span>
								<form:input path="h_school" placeholder="School's Name"
									class="form-control" />
							</div>

							<!-- Board Name -->
							<div style="margin-bottom: 25px" class="input-group">
								<span class="input-group-addon">Board name</span>
								<form:input path="h_board" placeholder="Board Name"
									class="form-control" />
							</div>

							<!-- Marks -->
							<div style="margin-bottom: 25px" class="input-group">
								<span class="input-group-addon">Marks Obtained</span>
								<form:input path="h_mars" placeholder="example-80"
									class="form-control" />
							</div>

							<!-- Passing year -->
							<div style="margin-bottom: 25px" class="input-group">
								<span class="input-group-addon">Year Of Passing</span>
								<form:input path="h_year" placeholder="example-2020"
									class="form-control" />
							</div>


							<hr>

							<!-- Bank Details -->
							<h3>Bank Details</h3>
							<!-- Bank Name -->
							<div style="margin-bottom: 25px" class="input-group">
								<span class="input-group-addon">Bank Name</span>
								<form:input path="bName" placeholder="Bank Name"
									class="form-control" />
							</div>

							<!-- Branch Name -->
							<div style="margin-bottom: 25px" class="input-group">
								<span class="input-group-addon">Branch Name</span>
								<form:input path="branch" placeholder="Branch Name"
									class="form-control" />
							</div>

							<!-- IFSC code -->
							<div style="margin-bottom: 25px" class="input-group">
								<span class="input-group-addon">IFSC code</span>
								<form:input path="ifsc" placeholder="IFSC code"
									class="form-control" />
							</div>

							<!-- Account number -->
							<div style="margin-bottom: 25px" class="input-group">
								<span class="input-group-addon">Account number</span>
								<form:input path="ac_no" placeholder="Account number"
									class="form-control" />
							</div>

						</form:form>

						<!-- Registration Form -->
						<form:form
							action="${pageContext.request.contextPath}/system/processApprov"
							modelAttribute="status" method="POST" class="form-horizontal">

							<!-- Place for messages: error, alert etc ... -->
							<div class="form-group">
								<div class="col-xs-15"></div>
							</div>


							<hr>
							<h2>Approve Application</h2>
							<!-- need to associate the data with id -->
							<!-- user name -->
							<div style="margin-bottom: 25px" class="input-group">
								<span class="input-group-addon">User Name</span>
								<form:input path="userName" value="${pInfo.userName}"
									placeholder="User Name" class="form-control" />
							</div>
							<!-- Approvel -->
							<div style="margin-bottom: 25px" class="input-group">
								<span class="input-group-addon">Category</span> Approve
								<form:radiobutton path="status" value="Approve" />
								Rejected
								<form:radiobutton path="status" value="Rejected" />


							</div>

							<!-- Register Button -->
							<div style="margin-top: 10px" class="form-group">
								<div class="col-sm-6 controls">
									<button type="submit" class="btn btn-primary">Submit</button>
								</div>
							</div>

						</form:form>
						</div>

	</div>

	</div>

	</div>
	</c:if>
	<a href="${pageContext.request.contextPath}/system"> Back to home</a>
	
</body>
</html>