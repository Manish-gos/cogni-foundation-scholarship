<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
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

       <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Cogni-Foundation</a>
    </div>
    <ul class="nav navbar-nav">
      <li ><a href="#">Home</a></li>
      <li><a href="${pageContext.request.contextPath}/student/personalInfo">Apply for Scholarship</a></li>
      <li><a href="${pageContext.request.contextPath}/student/viewInfoForm"  >View Application</a></li>
       <li><a href="${pageContext.request.contextPath}/student/viewStatus">Show Application Status</a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
     
      <li><form:form action="${pageContext.request.contextPath}/logout" 
							   method="POST" class="form-horizontal">
							   <!-- Logout Button -->
						<div style="margin-top: 10px" class="form-group">						
							<div class="col-sm-6 controls">
								<button type="submit" style="background-color:#525151" class="btn btn-primary">Logout</button>
							</div>
							</div>
							   </form:form> Logout</li>
    </ul>
   
  </div>
</nav>

<c:if test="${pInfo!=null}">
  
    
  
    </c:if>

	<div class="container">
		<div style="background-color: #222222 " class="jumbotron">
		<div style="color: white">
			<h1 >COGNI-FOUNDATION SCHOLARSHIP</h1>
			<p>YOU DREAM WE BUILD</p>
		</div>
	</div>
	</div>
	<hr>
	
	<!-- Display role and name -->
	User:<security:authentication property="principal.username"/>
	<br><br>
	Role(s):<security:authentication property="principal.authorities"/>
	<hr>
	
	
	
		<security:authorize access="hasRole('ADMIN')">
	
	<!-- add href link to go admin page -->
	<p>
	   <a  href="${pageContext.request.contextPath}/system"><button type="button" style="background-color:#525151" class="btn btn-primary">Admin Work</button></a>
	    (only for Admins)
	</p>
	
	</security:authorize>

</body>

</html>