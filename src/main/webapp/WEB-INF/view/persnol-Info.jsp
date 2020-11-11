<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!doctype html>
<html lang="en">

<head>

<title>Add your personal Info</title>

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
	
	<style>
.error {
	color: red
}
</style>

</head>

<body>
	<!-- -------------------------------------Navigation bar------------------------------- -->
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
	
	<!-- ---------------------------------------------Container----------------------------- -->
	<div class="container">
		<div style="background-color: #222222 " class="jumbotron">
		<div style="color: white">
			<h1 >COGNI-FOUNDATION SCHOLARSHIP</h1>
			<p>YOU DREAM WE BUILD</p>
		</div>
	</div>
	</div>


	<div>
		<div id="loginbox" style="margin-top: 50px;"
			class="mainbox col-md-8 col-md-offset-2 col-sm-8 col-sm-offset-2">

			<div class="panel panel-primary">

				<div  style="background-color: #3d3c3c " class="panel-heading">
					<div class="panel-title">Add Your Information</div>
				</div>

				<div style="padding-top: 30px" class="panel-body">

					<!-- -----------------------------Registration Form------------------- -->
					<form:form
						action="${pageContext.request.contextPath}/student/processInfoForm"
						modelAttribute="pInfo" method="POST" class="form-horizontal">

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
						
                        <div  style="background-color: #3d3c3c " class="panel-heading">
                        <h2 style="color: white" class="panel-title" data-toggle="collapse" data-target="#demo">Add Your Personal Details</h2>
                        </div>
                         <div id="demo" class="collapse">
                         <h3> Personal Details</h3>
                         
						<!-- need to associate the data with id -->
						<!-- ----------------------------------Students Name-------------------------- -->
						<div style="margin-bottom: 25px" class="input-group">
							<span class="input-group-addon">Student name</span>
							<form:input path="sName" placeholder="Student's Name"
								class="form-control" />
								<form:errors path="sName" cssClass="error" />
						</div>

						<!-- ------------------------------------Father's Name------------------------- -->
						<div style="margin-bottom: 25px" class="input-group">
							<span class="input-group-addon">Father's name</span>
							<form:input path="fName" placeholder="Father's Name"
								class="form-control" />
								<form:errors path="fName" cssClass="error" />
						</div>

						<!-- -------------------------------------Date of Birth-------------------------- -->
						<div style="margin-bottom: 25px" class="input-group">
							<span class="input-group-addon">DOB</span>
							<form:input path="dob" placeholder="Date of Birth(DD/MM/YYYY)"
								class="form-control" />
								<form:errors path="dob" cssClass="error" />
						</div>

						<!-- ---------------------------------------Category---------------------------------- -->
						<div style="margin-bottom: 25px" class="input-group">
							<span class="input-group-addon">Category</span> SC
							<form:radiobutton path="catagory" value="sc" />
							ST
							<form:radiobutton path="catagory" value="st" />
							OBC
							<form:radiobutton path="catagory" value="obc" />
							GENERAL
							<form:radiobutton path="catagory" value="general" />
							<form:errors path="catagory" cssClass="error" />
						</div>

						<!-- -------------------------------------------Gender----------------------------------- -->
						<div style="margin-bottom: 25px" class="input-group">
							<span class="input-group-addon">Category</span> Male
							<form:radiobutton path="gender" value="male" />
							Female
							<form:radiobutton path="gender" value="female" />
							<form:errors path="gender" cssClass="error" />

						</div>

						<!-- ----------------------------------------Aadhar Number------------------------------- -->
						<div style="margin-bottom: 25px" class="input-group">
							<span class="input-group-addon">Aadhar Number</span>
							<form:input path="aadhar_no" placeholder="Aadhar Number"
								class="form-control" />
								<form:errors path="aadhar_no" cssClass="error" />
						</div>

						<!-- -------------------------------------------Email------------------------------------ -->
						<div style="margin-bottom: 25px" class="input-group">
							<span class="input-group-addon">Email Address</span>
							<form:input path="email" placeholder="Email Address"
								class="form-control" />
								<form:errors path="email" cssClass="error" />

						</div>

						<!-- ------------------------------------------Phone-------------------------------------- -->
						<div style="margin-bottom: 25px" class="input-group">
							<span class="input-group-addon">Phone Number</span>
							<form:input path="phone" placeholder="Phone Number"
								class="form-control" />
								<form:errors path="phone" cssClass="error" />
						</div>

						<!-- -----------------------------------------State------------------------------------------ -->
						<div style="margin-bottom: 25px" class="input-group">
							<span class="input-group-addon">State Name</span>
							<form:input path="state" placeholder="State Name"
								class="form-control" />
								<form:errors path="state" cssClass="error" />
						</div>

						<!-- -------------------------------------------City------------------------------------------ -->
						<div style="margin-bottom: 25px" class="input-group">
							<span class="input-group-addon">City</span>
							<form:input path="city" placeholder="City" class="form-control" />
                             <form:errors path="city" cssClass="error" />
						</div>

						<!-- pin -->
						<div style="margin-bottom: 25px" class="input-group">
							<span class="input-group-addon">Pin Code</span>
							<form:input path="pin" placeholder="Pin Code"
								class="form-control" />
								<form:errors path="pin" cssClass="error" />
						</div>
                        </div>
						<hr>
						
						<!----------------------------------Educational information--------------------------------------->
						   <div  style="background-color: #3d3c3c " class="panel-heading">
                        <h2 style="color: white" class="panel-title" data-toggle="collapse" data-target="#demo1">Add Your Higher Secondry School Details</h2>
                        </div>
                         <div id="demo1" class="collapse">
						<h3>Higher Secondry School</h3>
						
						<!---------------------------------- School Name---------------------------------------------- -->
						<div style="margin-bottom: 25px" class="input-group">
							<span class="input-group-addon">School name</span>
							<form:input path="hs_school" placeholder="School's Name"
								class="form-control" />
								<form:errors path="hs_school" cssClass="error" />
						</div>

						<!-- ----------------------------------------Board Name-------------------------------- -->
						<div style="margin-bottom: 25px" class="input-group">
							<span class="input-group-addon">Board name</span>
							<form:input path="hs_board" placeholder="Board Name"
								class="form-control" />
								<form:errors path="hs_board" cssClass="error" />
						</div>

						<!-- -------------------------------------------Marks-------------------------------- -->
						<div style="margin-bottom: 25px" class="input-group">
							<span class="input-group-addon">Marks Obtained</span>
							<form:input path="hs_mars" placeholder="example-80"
								class="form-control" />
								<form:errors path="hs_mars" cssClass="error" />
						</div>

						<!-- Passing year -->
						<div style="margin-bottom: 25px" class="input-group">
							<span class="input-group-addon">Year Of Passing</span>
							<form:input path="hs_year" placeholder="example-2020"
								class="form-control" />
								<form:errors path="hs_year" cssClass="error" />
						</div>
                         </div>
                         
                         <hr>
                         
                           <div  style="background-color: #3d3c3c " class="panel-heading">
                        <h2 style="color: white" class="panel-title" data-toggle="collapse" data-target="#demo2">Add Your Higher School Details</h2>
                        </div>
                         <div id="demo2" class="collapse">
						<h3>Higher School </h3>
						<!-- ---------------------------------School Name----------------------------- -->
						<div style="margin-bottom: 25px" class="input-group">
							<span class="input-group-addon">School name</span>
							<form:input path="h_school" placeholder="School's Name"
								class="form-control" />
								<form:errors path="h_school" cssClass="error" />
						</div>

						<!-- ---------------------------------Board Name----------------------------- -->
						<div style="margin-bottom: 25px" class="input-group">
							<span class="input-group-addon">Board name</span>
							<form:input path="h_board" placeholder="Board Name"
								class="form-control" />
								<form:errors path="h_board" cssClass="error" />
						</div>

						<!-- -----------------------------------Marks-------------------------------- -->
						<div style="margin-bottom: 25px" class="input-group">
							<span class="input-group-addon">Marks Obtained</span>
							<form:input path="h_mars" placeholder="example-80"
								class="form-control" />
								<form:errors path="h_mars" cssClass="error" />
						</div>

						<!-- -----------------------------------Passing year-------------------------- -->
						<div style="margin-bottom: 25px" class="input-group">
							<span class="input-group-addon">Year Of Passing</span>
							<form:input path="h_year" placeholder="example-2020"
								class="form-control" />
								<form:errors path="h_year" cssClass="error" />
						</div>
                        </div>

						<hr>

						<!-- ------------------------------------Bank Details--------------------------------- -->
						  <div  style="background-color: #3d3c3c " class="panel-heading">
                        <h2 style="color: white" class="panel-title" data-toggle="collapse" data-target="#demo3">Add Your Bank Details</h2>
                        </div>
                         <div id="demo3" class="collapse">
                         <h3>Bank Details</h3>
						<!-- Bank Name -->
						<div style="margin-bottom: 25px" class="input-group">
							<span class="input-group-addon">Bank Name</span>
							<form:input path="bName" placeholder="Bank Name"
								class="form-control" />
								<form:errors path="bName" cssClass="error" />
						</div>

						<!-- ----------------------------------Branch Name------------------------------------- -->
						<div style="margin-bottom: 25px" class="input-group">
							<span class="input-group-addon">Branch Name</span>
							<form:input path="branch" placeholder="Branch Name"
								class="form-control" />
								<form:errors path="branch" cssClass="error" />
						</div>

						<!-- --------------------------------IFSC code----------------------------------------- -->
						<div style="margin-bottom: 25px" class="input-group">
							<span class="input-group-addon">IFSC code</span>
							<form:input path="ifsc" placeholder="IFSC code"
								class="form-control" />
								<form:errors path="ifsc" cssClass="error" />
						</div>

						<!-- --------------------------------Account number------------------------------------ -->
						<div style="margin-bottom: 25px" class="input-group">
							<span class="input-group-addon">Account number</span>
							<form:input path="ac_no" placeholder="Account number"
								class="form-control" />
								<form:errors path="ac_no" cssClass="error" />
						</div>
                        </div>
                        <hr>
						<!-- -------------------------------Register Button-------------------------------------- -->
						<div style="margin-top: 10px" class="form-group">
							<div class="col-sm-6 controls">
								<button type="submit" style="background-color:#525151" class="btn btn-primary">Submit</button>
							</div>
						</div>
					</form:form>

				</div>

			</div>

		</div>

	</div>
</body>
</html>