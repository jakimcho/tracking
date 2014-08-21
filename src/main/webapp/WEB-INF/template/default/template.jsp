<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Default tiles template</title>
<!-- jQuery -->
<script src="//code.jquery.com/jquery-2.1.0.min.js"></script>
<!-- Bootstrap -->
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">

<!-- Optional theme -->
<link rel="stylesheet"
	href="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">

<!-- Latest compiled and minified JavaScript -->
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<style type="text/css">
body {
	margin: 0px;
	padding: 0px;
	height: 100%;
	overflow: hidden;
}

.page {
	min-height: 100%;
	position: relative;
}

.header {
	padding: 10px;
	width: 100%;
	text-align: center;
}

.content {
	padding: 10px;
	padding-bottom: 20px; /* Height of the footer element */
	overflow: hidden;
}

.menu {
	padding: 50px 10px 0px 10px;
	width: 200px;
	float: left;
}

.body {
	margin: 50px 10px 0px 250px;
}

.footer {
	clear: both;
	position: absolute;
	bottom: 0;
	left: 0;
	text-align: center;
	width: 100%;
	height: 20px;
}
</style>
</head>
<body>
	<div class="page">
		<div class="navbar navbar-default navbar-fixed-top" role="navigation">
			<div class="container">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target=".navbar-collapse">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="#">Project name</a>
				</div>
				<div class="navbar-collapse collapse">
					<ul class="nav navbar-nav">
						<spring:url value="/home" var="homeUrl" htmlEscape="true"/>
						<li class="active"><a href="${homeUrl}">Home</a></li>
						<spring:url value="/persons/personForm" var="personFormtUrl" htmlEscape="true"/>
						<li><a href="${personFormtUrl}">Add Person</a></li>	
						<spring:url value="/users/users.html" var="usersUrl" htmlEscape="true"/>
						<li><a href="${usersUrl}">Users</a></li>			
						<spring:url value="/about" var="aboutUrl" htmlEscape="true"/>
						<li><a href="${aboutUrl}">About</a></li>				
					</ul>
				</div>
				<!--/.nav-collapse -->
			</div>
		</div>
		<tiles:insertAttribute name="header" />
		<div class="content">
			<tiles:insertAttribute name="menu" />
			<tiles:insertAttribute name="body" />
		</div>
		<tiles:insertAttribute name="footer" />
	</div>
</body>
</html>