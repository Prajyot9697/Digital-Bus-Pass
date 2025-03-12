<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Registration Page</title>
	<link rel="stylesheet" href="css/style.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/custom.css">
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-primary">
		<a class="navbar-brand" href="#">Digital Bus Pass</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarNav">
			<ul class="navbar-nav">
				<li class="nav-item">
					<a class="nav-link" href="${pageContext.request.contextPath}/index.jsp">Home</a>
				</li>
			</ul>
		</div>
	</nav>
<div class="container">
	<h2 class="mt-5">Registration Form</h2>
	<form action="RegisterServlet" method="post">
		<div class="form-group">
			<label for="firstName">First Name</label>
			<input type="text" class="form-control" id="firstName" name="firstName" placeholder="Enter First Name">
		</div>
		<div class="form-group">
			<label for="lastName">Last Name</label>
			<input type="text" class="form-control" id="lastName" name="lastName" placeholder="Enter Last Name">
		</div>
		<div class="form-group">
			<label for="lastName">Id</label>
			<input type="text" class="form-control" id="id" name="id" placeholder="Enter id">
		</div>
		<div class="form-group">
			<label for="email">Email</label>
			<input type="email" class="form-control" id="email" name="email" placeholder="Enter Email">
		</div>
		<div class="form-group">
			<label for="password">Password</label>
			<input type="password" class="form-control" id="password" name="password" placeholder="Enter Password">
		</div>
		<div class="form-group">
			<label for="confirmPassword">Confirm Password</label>
			<input type="password" class="form-control" id="confirmPassword" name="confirmPassword" placeholder="Confirm Password">
		</div>
		<div class="form-group">
			<label for="role">Role</label>
			<select class="form-control" id="role" name="role">
				<!-- <option value="admin">Admin</option> -->
				<option value="passenger">Passenger</option>
				<option value="conductor">Conductor</option>
			</select>
		</div>
		<button type="submit" class="btn btn-primary">Submit</button>
		<a href="index.jsp" class="btn btn-secondary">Cancel</a>
	</form>
</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>
