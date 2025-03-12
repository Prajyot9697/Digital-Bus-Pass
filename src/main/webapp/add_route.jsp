<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
	<title>Add Route</title>
	<!-- Bootstrap CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
	<!-- Custom CSS -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/custom.css">
	 <style type="text/css">
		.container {
			margin-top: 50px;
		}
		h2 {
			margin-bottom: 30px;
		}
		
		form {
			margin-top: 50px;
			margin-left: auto;
			margin-right: auto;
			width: 100%;
			border: 1px solid #ccc;
			padding: 20px;
			border-radius: 10px;
			box-shadow: 0px 0px 10px #ccc;
		}
	
	</style> 
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-primary ">
		<a class="navbar-brand" href="#">Digital Bus Pass</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarNav">
			<ul class="navbar-nav">
				<li class="nav-item">
					<a class="nav-link" href="${pageContext.request.contextPath}/admin_home.jsp">Home</a>
				</li>
			</ul>
		</div>
	</nav>
	<div class="container">
		<h2>Add Route</h2>
		<form action="routeServlet" method="post">
			<div class="form-group">
				<label for="route_name">Route Name:</label>
				<input type="text" class="form-control" id="route_name" name="route_name" required>
			</div>
			<div class="form-group">
				<label for="origin">Origin:</label>
				<input type="text" class="form-control" id="origin" name="origin" required>
			</div>
			<div class="form-group">
				<label for="destination">Destination:</label>
				<input type="text" class="form-control" id="destination" name="destination" required>
			</div>
			<div class="form-group">
				<label for="fare">Kilometer:</label>
				<input type="number" class="form-control" id="km" name="km" min="1" required>
			</div>
			<button type="submit" class="btn btn-primary">ADD</button>
			<button type="reset" class="btn btn-primary">Clear</button>
		</form>
	</div>
	<!-- Bootstrap JS -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
