<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<title>Add Schedule</title>
	<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <!-- Custom CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/custom.css">
    <style>
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
	<!-- Navigation bar -->
	<nav class="navbar navbar-expand-lg navbar-light bg-primary">
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
	<!-- Add Schedule form -->
	<div class="container mt-4">
		<h2>Add Schedule</h2>
		<form method="post" action="scheduleServlet">
			<div class="form-group">
				<label for="bus_route">Bus Number:</label>
				<input type="text" class="form-control" id="busNumber" name="busNumber" required>
			</div>
			<div class="form-group">
				<label for="bus_route">Bus Route:</label>
				<input type="text" class="form-control" id="route_name" name="route_name" required>
			</div>
			<!-- <div class="form-group">
				<label for="bus_type">Bus Type:</label>
				<select class="form-control" id="bus_type" name="bus_type">
					<option value="">Select Bus Type</option>
					<option value="AC">AC</option>
					<option value="Non-AC">Non-AC</option>
				</select>
			</div> -->
			<div class="form-group">
				<label for="departure_time">Departure Time:</label>
				<input type="time" class="form-control" id="departure_time" name="departure_time">
			</div>
			<div class="form-group">
				<label for="arrival_time">Arrival Time:</label>
				<input type="time" class="form-control" id="arrival_time" name="arrival_time">
			</div>
			<button type="submit" class="btn btn-primary">ADD</button>
			<button type="reset" class="btn btn-primary">Clear</button>
		</form>
	</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>

    