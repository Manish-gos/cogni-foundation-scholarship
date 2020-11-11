<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<html>

<head>
<title>Cogni Scholarship</title>
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
				<a class="navbar-brand" href="${pageContext.request.contextPath}/cogniHome">Cogni-Foundation</a>
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
	
	<!-- ----------------------Description Body-------------------------------------------- -->
	<div class="container">
		<p>Cogni Foundation supports Education programmes that enables
			access to quality education to the students from underserved
			communities. CF has adopted&nbsp;Scholarship for higher education,
			Digital learning, STEM and Vocational Technical education as its
			focus areas in Education.</p>
		<p>&nbsp;</p>
		<p>
			<strong>Scholarship for Higher Education</strong>
		</p>
		<p>The high cost to pursue higher education is often a major
			barrier among the meritorious students from under-served communities.</p>
		<p>Recognizing this challenge, Cognizant Foundation has
			institutionalized the following scholarship programmes in accredited
			colleges to promote equity, merit and inclusion in higher
			education&nbsp;</p>
		<ul>
			<li>Scholarship for Engineering</li>
			<li>Scholarship for Visually Impaired</li>
			<li>Scholarship for Graduate study in Computer Science</li>
			<li>Scholarship for Graduate study in Special Education</li>
			<li>Scholarship for Graduate study in Social Sciences</li>
		</ul>
		<p>
			<strong>&nbsp;</strong>
		</p>
		<strong>Digital Learning, STEM and Vocational Technical
			Education </strong>
		<p>The programmes under the Digital Learning and STEM Education
			focus on&nbsp;the quality of educational content, pedagogy and
			experiential STEM&nbsp;learning.&nbsp; Digital based assistive
			devices are leveraged&nbsp;to promote quality learning for special
			children. Teachers capacity building is given special focus as part
			of these programmes.&nbsp; CF has partnered with many organizations
			to drive digital based STEM learning in schools through the following
			programmes</p>
		<ul>
			<li>Building Teachers Capacity in STEM</li>
			<li>Mobile Science Laboratories and Science centre</li>
			<li>Enable Digital Learning in Classroom</li>
			<li>Promote quality learning for special children leveraging
				digital technologies</li>
		</ul>
		<p>
			<br>The programme to promote Technical Vocational Education
			supports technical institutes with the state-of-art infrastructure to
			run vocational training programmes and in promoting inclusion in
			vocational education.
		</p>
	</div>
</body>

</html>