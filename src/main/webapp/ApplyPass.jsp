 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bus Pass Application Form</title>
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<!-- Custom CSS -->
 <link rel="stylesheet" href="${pageContext.request.contextPath}/css/custom.css">
<style>
.form-group {
    margin-bottom: 1rem;
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
		<a class="navbar-brand" href="#">Digital Bus Pass</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarNav">
			<ul class="navbar-nav">
				<li class="nav-item">
					<a class="nav-link" href="${pageContext.request.contextPath}/passenger_home.jsp">Home</a>
				</li>
			</ul>
		</div>
	</nav>
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-header">
                        <h1 class="text-center">Bus Pass Application Form</h1>
                    </div>
                    <div class="card-body">
                        <form action="ApplyPassServlet" method="post">
                            <div class="form-group">
                                <label for="name">Name:</label>
                                <input type="text" name="name" id="name" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label for="age">Age:</label>
                                <input type="number" name="age" id="age" class="form-control" min="18" max="100" required>
                            </div>
                            <div class="form-group">
                                <label for="gender">Gender:</label>
                                <select name="gender" id="gender" class="form-control" required>
                                    <option value="">-- Select Gender --</option>
                                    <option value="male">Male</option>
                                    <option value="female">Female</option>
                                    <option value="other">Other</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="address">Address:</label>
                                <textarea name="address" id="address" class="form-control" rows="3" cols="30" required></textarea>
                            </div>
                            <div class="form-group">
                                <label for="email">Email:</label>
                                <input type="email" name="email" id="email" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label for="phone">Phone:</label>
                                <input type="tel" name="phone" id="phone" class="form-control" required>
                            </div>
                            <hr>
                            <h4>Pass Details:</h4>
                            <div class="form-group">
                                <label for="type">Type:</label>
                                <select name="type" id="type" class="form-control" required>
                                    <option value="">-- Select Pass Type --</option>
                                    <option value="Student">Student</option>
                                    <option value="Senior">Senior</option>
                                    <option value="Regular">Regular</option>
                              
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="duration">Duration(in Days):</label>
                                <input type="number" name="duration" id="duration" class="form-control" required>
   
                        </div>
                        <div class="form-group">
                            <label for="start_date">Start Date:</label>
                            <input type="date" name="start_date" id="start_date" class="form-control" required>
                        </div>
                        <div class="form-group">
                            <label for="end_date">End Date:</label>
                            <input type="date" name="end_date" id="end_date" class="form-control" required>
                        </div>
                        <div class="form-group">
                                <label for="duration">Amount:</label>
                                <input type="text" name="amount" id="amount" class="form-control" required>
   
                        </div>
                        <hr>
                        <div class="form-group text-center">
                            <button type="submit" class="btn btn-primary">Submit</button>
                            <button type="reset" class="btn btn-secondary">Reset</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>