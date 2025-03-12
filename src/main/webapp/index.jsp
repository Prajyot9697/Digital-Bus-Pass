<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Login</title>
	<%@include file="css/all_css.jsp"%>
	
	<!-- Bootstrap CSS -->
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	<!-- Custom CSS -->
	<link rel="stylesheet" href="css/style.css">
	<!-- Login CSS -->
	<link rel="stylesheet" href="css/login.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
	
	
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/custom.css">
	<style>
footer {
        background-color: #1da2cd;;
        color: #fff;
        text-align: center;
        padding: 20px;
        position: absolute;
        bottom: 0;
        width: 100%;
    }

    footer a {
        color: #fff;
        text-decoration: none;
    }

    footer a:hover {
        text-decoration: underline;
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
	<nav class="navbar navbar-expand-lg navbar-light bg-primary">
		<a class="navbar-brand" href="#">Digital Bus Pass Automation</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarNav">
			<ul class="navbar-nav">
				<li class="nav-item">
					<a class="nav-link" href="${pageContext.request.contextPath}/admin_home.jsp">Home</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="${pageContext.request.contextPath}/admin_home.jsp">About Us</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="${pageContext.request.contextPath}/contactus.jsp">Contact Us</a>
				</li>
			</ul>
		</div>
	</nav>
	<div class="container">
		<form action="LoginServlet" method="post">
			<h2 class="text-center">Login</h2>
			<div class="form-group">
				<label for="email">Email:</label>
				<input type="email" class="form-control" id="email" name="email" required>
			</div>
			<div class="form-group">
				<label for="password">Password:</label>
				<input type="password" class="form-control" id="password" name="password" required>
			</div>
			<div class="form-group">
				<label for="role">Role:</label>
				<select class="form-control" id="role" name="role" required>
					<option value="admin">Admin</option>
					<option value="passenger">Passenger</option>
					<option value="conductor">Conductor</option>
				</select>
			</div>
			<button type="submit" class="btn btn-primary">Login</button>
			<a href="register.jsp" class="btn btn-secondary">Register</a>
		</form>
	</div>
	<footer>
    <p>&copy; 2023 Digital Bus Pass. All Rights Reserved.</p>
</footer>

	<!-- Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
